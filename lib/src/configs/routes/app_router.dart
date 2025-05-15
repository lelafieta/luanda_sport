import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const Text("HOME"),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.vertical,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 300),
        );
      },
    ),
    GoRoute(
      path: '/treinador',
      name: 'treinador',
      builder: (context, state) => const Text("HOME"),
    ),
    GoRoute(
      path: '/goleiro',
      name: 'goleiro',
      builder: (context, state) => const Text("HOME"),
    ),
    GoRoute(
      path: '/jogador',
      name: 'jogador',
      builder: (context, state) => const Text("HOME"),
    ),
    GoRoute(
      path: '/adepto',
      name: 'adepto',
      builder: (context, state) => const Text("HOME"),
    ),
  ],
);
