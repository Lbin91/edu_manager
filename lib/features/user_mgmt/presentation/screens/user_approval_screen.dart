import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../auth/domain/entities/auth_user.dart';
import '../providers/user_management_controller.dart';

class UserApprovalScreen extends ConsumerWidget {
  const UserApprovalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pendingUsersAsync = ref.watch(pendingUsersControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('가입 승인 관리')),
      body: pendingUsersAsync.when(
        data: (users) {
          if (users.isEmpty) {
            return const Center(child: Text('승인 대기 중인 사용자가 없습니다.'));
          }
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text(user.name ?? '이름 없음'),
                  subtitle: Text(user.email),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.check, color: Colors.green),
                        onPressed: () =>
                            _showApprovalDialog(context, ref, user),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.red),
                        onPressed: () {
                          ref
                              .read(pendingUsersControllerProvider.notifier)
                              .rejectUser(user.uid);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  void _showApprovalDialog(BuildContext context, WidgetRef ref, AuthUser user) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('역할 지정 및 승인'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('선생님 (Teacher)'),
              onTap: () {
                ref
                    .read(pendingUsersControllerProvider.notifier)
                    .approveUser(user.uid, UserRole.teacher);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('기사님 (Driver)'),
              onTap: () {
                ref
                    .read(pendingUsersControllerProvider.notifier)
                    .approveUser(user.uid, UserRole.driver);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
