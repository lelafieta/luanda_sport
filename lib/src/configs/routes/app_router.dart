import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/fans/presentation/pages/fan_page.dart';

final GoRouter appRouter = GoRouter(
  // redirect: (context, state) {
  //   final auth = ref.read(authProvider);

  //   if (!auth.isLoggedIn) return '/login';

  //   switch (auth.user.profile) {
  //     case UserProfile.fan:
  //       return '/home-fan';
  //     case UserProfile.player:
  //       return '/home-player';
  //     case UserProfile.coach:
  //       return '/home-coach';
  //     case UserProfile.organizer:
  //       return '/home-organizer';
  //     case UserProfile.scout:
  //       return '/home-scout';
  //     case UserProfile.referee:
  //       return '/home-referee';
  //   }
  // },
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: FanPage(),
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

    //  GoRoute(path: '/login', builder: (_, __) => LoginPage()),
    // GoRoute(path: '/home-fan', builder: (_, __) => HomeFanPage()),
    // GoRoute(path: '/home-player', builder: (_, __) => HomePlayerPage()),
    // GoRoute(path: '/home-coach', builder: (_, __) => HomeCoachPage()),
    // GoRoute(path: '/home-organizer', builder: (_, __) => HomeOrganizerPage()),
    // GoRoute(path: '/home-scout', builder: (_, __) => HomeScoutPage()),
    // GoRoute(path: '/home-referee', builder: (_, __) => HomeRefereePage()),
  ],
);
