import 'package:flutter/material.dart';
import 'package:luanda_sport/src/core/resources/app_images.dart';

class LineUpPage extends StatefulWidget {
  const LineUpPage({super.key});

  @override
  State<LineUpPage> createState() => _LineUpPageState();
}

class _LineUpPageState extends State<LineUpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppImages.lineupStadium,
            ),
            fit: BoxFit.fill),
      ),
      child: Text("Lela"),
    );
  }
}
