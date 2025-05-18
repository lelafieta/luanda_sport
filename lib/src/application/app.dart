import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luanda_sport/src/configs/routes/app_pages.dart';
import 'package:luanda_sport/src/configs/themes/app_themes.dart';

class LuandaSportApp extends StatelessWidget {
  const LuandaSportApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        onGenerateRoute: AppPages.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Meu App Futebol',
      ),
    );
  }
}
