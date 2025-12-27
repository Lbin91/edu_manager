import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/invite_code_screen.dart';
import '../../features/student/presentation/screens/student_list_screen.dart';
import '../../features/student/presentation/screens/student_form_screen.dart';
import '../../features/student/domain/entities/student.dart';
import '../../features/user_mgmt/presentation/screens/admin_dashboard_screen.dart';
import '../../features/user_mgmt/presentation/screens/user_approval_screen.dart';
import '../../features/shuttle/presentation/screens/driver_main_screen.dart';

// Route Names
class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String inviteCode = '/invite-code';
  static const String shuttle = '/shuttle';
  static const String admin = '/admin';
  static const String userApproval = '/admin/user-approval';
  static const String studentList = '/admin/student-list';
  static const String studentForm = '/admin/student-form';
}

final routerProvider = Provider<GoRouter>((ref) {
  // TODO: Add auth state listening for redirection
  return GoRouter(
    initialLocation: Routes.admin, // Temporary start from Admin for MVP demo
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Home Screen (Dashboard)')),
        ),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: Routes.inviteCode,
        builder: (context, state) => const InviteCodeScreen(),
      ),
      GoRoute(
        path: Routes.shuttle,
        builder: (context, state) => const DriverMainScreen(),
      ),
      // Admin Routes
      GoRoute(
        path: Routes.admin,
        builder: (context, state) => const AdminDashboardScreen(),
      ),
      GoRoute(
        path: Routes.userApproval,
        builder: (context, state) => const UserApprovalScreen(),
      ),
      GoRoute(
        path: Routes.studentList,
        builder: (context, state) => const StudentListScreen(),
      ),
      GoRoute(
        path: Routes.studentForm,
        builder: (context, state) {
          // Pass extra object for edit mode
          final student = state.extra as Student?;
          return StudentFormScreen(student: student);
        },
      ),
    ],
  );
});
