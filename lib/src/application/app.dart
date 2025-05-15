import 'package:flutter/material.dart';
import '../configs/routes/app_router.dart';

class LuandaSportApp extends StatelessWidget {
  const LuandaSportApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Meu App Futebol',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
