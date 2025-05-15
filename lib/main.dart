import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luanda_sport/src/application/app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const LuandaSportApp());
}
