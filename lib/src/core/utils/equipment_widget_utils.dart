import 'package:flutter/material.dart';
import '../resources/app_images.dart';

class EquipmentWidgetUtils {
  static Color parseColorFromString(String colorString) {
    // Remove a parte "Color(" e ")"
    final hexString = colorString.replaceAll(RegExp(r'[^0-9a-fA-F]'), '');

    // Converte a string hexadecimal para inteiro
    return Color(int.parse('0xff$hexString'));
  }

  static Widget equipamentBackComponent(
      //TeamEntity? team,
      {String? number = "7"}) {
    return Stack(
      children: [
        Image.asset(
          width: double.infinity,
          height: double.infinity,
          AppImages.backPartTShirt,
          color: parseColorFromString("Color(0xff0666090)"),
        ),
        Positioned.fill(
          child: Image.asset(
            AppImages.bodyBack,
            color: Colors.black.withOpacity(.10),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double fontSize = constraints.maxWidth * 0.3;
                return Text(
                  number ?? "7",
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  static Widget equipamentBackComponentCustom(
      // TeamEntity? team,
      {String? number = "7"}) {
    return Stack(
      children: [
        Image.asset(
          width: double.infinity,
          height: double.infinity,
          AppImages.backPartTShirt,
          color: parseColorFromString("Color(0xff0345000)"),
        ),
        Positioned.fill(
          child: Image.asset(
            AppImages.bodyBack,
            color: Colors.black.withOpacity(.10),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double fontSize = constraints.maxWidth * 0.3;
                return Text(
                  number ?? "7",
                  style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      color: parseColorFromString("Color(0xff0000000)")),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  static Widget equipamentFrontComponent(
      //TeamEntity? team
      ) {
    final Map<String, String> typeToImage = {
      'main': AppImages.typeEmpty,
      'type1': AppImages.type1,
      'type2': AppImages.type2,
      'type3': AppImages.type3,
      'type4': AppImages.type4,
      'type5': AppImages.type5,
      'type6': AppImages.type6,
      'type7': AppImages.type7,
      'type8': AppImages.type8,
      'type9': AppImages.type9,
      'type10': AppImages.type10,
      'type11': AppImages.type11,
      'type12': AppImages.type12,
      'type13': AppImages.type13,
      'type14': AppImages.type14,
      'type15': AppImages.type15,
      'type16': AppImages.type16,
      'type17': AppImages.type17,
    };

    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            AppImages.backPartTShirt,
            color: Colors.black,
          ),
        ),
        Image.asset(
          width: double.infinity,
          height: double.infinity,
          AppImages.mainTShirt,
          color: parseColorFromString("Color(0xff000000)"),
        ),
        Positioned.fill(
          child: Image.asset(typeToImage["type2"]!,
              color: parseColorFromString("Color(0xff000000)")),
        ),
        Positioned.fill(
          child: Image.asset(
            AppImages.body,
            color: Colors.black.withOpacity(.10),
          ),
        ),
      ],
    );
  }
}
