import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/router.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('관리자 대시보드')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _AdminMenuCard(
            icon: Icons.people_outline,
            title: '가입 승인 관리',
            onTap: () => context.push(Routes.userApproval),
          ),
          _AdminMenuCard(
            icon: Icons.face,
            title: '원생 관리',
            onTap: () => context.push(Routes.studentList),
          ),
          _AdminMenuCard(
            icon: Icons.directions_bus,
            title: '차량/기사 관리',
            onTap: () {
              context.push(Routes.shuttle);
            },
          ),
          _AdminMenuCard(
            icon: Icons.school,
            title: '교사 관리',
            onTap: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('준비 중인 기능입니다.')));
            },
          ),
        ],
      ),
    );
  }
}

class _AdminMenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _AdminMenuCard({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Theme.of(context).primaryColor),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
