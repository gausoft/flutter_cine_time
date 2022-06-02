import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/main_screen.dart';
import 'pages/register_screen.dart';
import 'pages/splash_screen.dart';
import 'pages/login_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      pageBuilder: (context, state) => CupertinoPage<void>(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: const SplashScreen(),
      ),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      pageBuilder: (context, state) => CupertinoPage<void>(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      pageBuilder: (context, state) => CupertinoPage<void>(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: const RegisterScreen(),
      ),
    ),
  ],
  errorPageBuilder: (context, state) => CupertinoPage<void>(
    key: state.pageKey,
    child: const Scaffold(),
  ),
);

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return CupertinoPageRoute<void>(
        settings: settings,
        builder: (context) => const SplashScreen(),
      );
    case '/login':
      return CupertinoPageRoute<void>(
        settings: settings,
        builder: (context) => const LoginScreen(),
      );
    case '/register':
      return CupertinoPageRoute<void>(
        settings: settings,
        builder: (context) => const RegisterScreen(),
      );
    case '/main':
      return CupertinoPageRoute<void>(
        settings: settings,
        builder: (context) => MainScreen(),
      );
    default:
      return CupertinoPageRoute(
        builder: (_) => const Scaffold(),
        settings: settings,
      );
  }
}
