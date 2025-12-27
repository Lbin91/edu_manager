import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

// Route Names
class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String shuttle = '/shuttle';
}

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Home Screen (Dashboard)')),
        ),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Login Screen'))),
      ),
      GoRoute(
        path: Routes.shuttle,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Shuttle Screen'))),
      ),
    ],
  );
});
