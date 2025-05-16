import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luanda_sport/src/configs/themes/app_colors.dart';
import 'package:luanda_sport/src/core/resources/app_icons.dart';

class FanCompetitionComponent extends StatelessWidget {
  const FanCompetitionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      title: const Text("Torneio TicTok"),
      subtitle: const Text(
        "A decorrer",
        style: TextStyle(
            color: AppColors.primaryColor, fontStyle: FontStyle.italic),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(AppIcons.thumbsup),
      ),
    );
  }
}
