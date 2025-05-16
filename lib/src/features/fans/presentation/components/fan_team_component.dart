import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luanda_sport/src/configs/themes/app_colors.dart';
import 'package:luanda_sport/src/core/resources/app_icons.dart';

class FanTeamComponent extends StatelessWidget {
  const FanTeamComponent({super.key});

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
      title: const Text("Dourada FC"),
      subtitle: Row(
        children: [
          SvgPicture.asset(
            AppIcons.marker,
            width: 18,
            color: AppColors.grey,
          ),
          const SizedBox(width: 5),
          const Text(
            "Angola, Luanda, Luanda",
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(AppIcons.thumbsup),
      ),
    );
  }
}
