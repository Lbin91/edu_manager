import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/router.dart';
import '../providers/student_controller.dart';

class StudentListScreen extends ConsumerWidget {
  const StudentListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final studentListAsync = ref.watch(studentControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('원생 관리')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.studentForm),
        child: const Icon(Icons.add),
      ),
      body: studentListAsync.when(
        data: (students) {
          if (students.isEmpty) {
            return const Center(child: Text('등록된 원생이 없습니다.'));
          }
          return ListView.separated(
            itemCount: students.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final student = students[index];
              return ListTile(
                leading: CircleAvatar(child: Text(student.name[0])),
                title: Text(
                  '${student.name} (${_getGradeText(student.grade)})',
                ),
                subtitle: Text(
                  '${student.schoolName} / ${student.parentPhone}',
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  // TODO: Navigate to Detail or Edit
                  context.push(Routes.studentForm, extra: student);
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  String _getGradeText(int grade) {
    if (grade == 0) return '유치부';
    if (grade <= 6) return '초$grade';
    if (grade <= 9) return '중${grade - 6}';
    return '고${grade - 9}';
  }
}
