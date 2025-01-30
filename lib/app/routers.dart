import 'package:flutter_app/screens/haberscreen.dart';
import 'package:flutter_app/screens/oyunscreen.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/loading_screen.dart';
import 'package:flutter_app/screens/gotyscreen.dart';
import 'package:flutter_app/screens/login.dart';
import 'package:flutter_app/screens/register.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SplashScreen(),
      ),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomeScreen(),
      ),
    ),
    GoRoute(
      path: '/oyun',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const GameScreen(),
      ),
    ),
    GoRoute(
      path: '/haber',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const HaberScreen(),
      ),
    ),
    GoRoute(
      path: '/goty',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const GotyScreen(),
      ),
    ),
     GoRoute(
      path: '/login',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
      path: '/register',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const RegisterScreen(),
      ),
    ),
  ],
);
