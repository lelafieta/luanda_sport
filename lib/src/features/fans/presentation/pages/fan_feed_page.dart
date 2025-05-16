import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:luanda_sport/src/configs/themes/app_colors.dart';
import 'package:luanda_sport/src/core/shared/widgets/title_widget.dart';

class FanFeedPage extends StatefulWidget {
  const FanFeedPage({super.key});

  @override
  State<FanFeedPage> createState() => _FanFeedPageState();
}

class _FanFeedPageState extends State<FanFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleWidget(
              title: "Stories",
              callbackAction: () {},
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  final league = Competition.fromJson(jsonData[index]);
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2,
                      ),
                    ),
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: league.logo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                itemCount: jsonData.length,
              ),
            ),
            // EasyDateTimeLine(
            //   initialDate: DateTime.now(),
            //   locale: "pt_BR",
            // ),
            TitleWidget(
              title: "Jogos em Distaques",
              callbackAction: () {},
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://assets.goal.com/images/v3/bltea8dbf2c3be62a24/WhatsApp_Image_2023-01-17_at_12.15.52_(1).jpeg?auto=webp&format=pjpg&width=1200&quality=60",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JerseyPainter extends CustomPainter {
  final Color shirtColor;
  final Color stripeColor;
  final int number;

  JerseyPainter(
      {required this.shirtColor,
      required this.stripeColor,
      required this.number});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Camisa
    paint.color = shirtColor;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height * 0.6), paint);

    // Barra/listra
    paint.color = stripeColor;
    canvas.drawRect(Rect.fromLTWH(0, size.height * 0.2, size.width, 10), paint);

    // Número (como texto)
    final textPainter = TextPainter(
      text: TextSpan(
        text: number.toString(),
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width / 2 - 10, size.height * 0.25));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class UniformModel {
  final Color shirtColor;
  final Color shortsColor;
  final Color stripeColor;
  final int number;
  final StripeStyle stripeStyle;

  UniformModel({
    required this.shirtColor,
    required this.shortsColor,
    required this.stripeColor,
    required this.number,
    required this.stripeStyle,
  });
}

enum StripeStyle { horizontal, vertical, diagonal }

class NewsArticle {
  final String id;
  final String imageUrl;
  final String title;
  final String gmtTime;
  final String sourceStr;
  final String? sourceIconUrl; // Pode ser nulo
  final PageInfo page;

  NewsArticle({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.gmtTime,
    required this.sourceStr,
    this.sourceIconUrl,
    required this.page,
  });

  // Método para converter JSON em objeto NewsArticle
  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      id: json['id'],
      imageUrl: json['imageUrl'],
      title: json['title'],
      gmtTime: json['gmtTime'],
      sourceStr: json['sourceStr'],
      sourceIconUrl: json['sourceIconUrl'],
      page: PageInfo.fromJson(json['page']),
    );
  }

  // Método para converter um objeto NewsArticle em JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imageUrl': imageUrl,
      'title': title,
      'gmtTime': gmtTime,
      'sourceStr': sourceStr,
      'sourceIconUrl': sourceIconUrl,
      'page': page.toJson(),
    };
  }
}

class PageInfo {
  final String url;

  PageInfo({required this.url});

  // Método para converter JSON em objeto PageInfo
  factory PageInfo.fromJson(Map<String, dynamic> json) {
    return PageInfo(
      url: json['url'],
    );
  }

  // Método para converter um objeto PageInfo em JSON
  Map<String, dynamic> toJson() {
    return {
      'url': url,
    };
  }
}

class Competition {
  final int id;
  final String name;
  final String localizedName;
  final String logo;

  Competition({
    required this.id,
    required this.name,
    required this.localizedName,
    required this.logo,
  });

  // Método para converter JSON em objeto Competition
  factory Competition.fromJson(Map<String, dynamic> json) {
    return Competition(
      id: json['id'],
      name: json['name'],
      localizedName: json['localizedName'],
      logo: json['logo'],
    );
  }

  // Método para converter um objeto Competition em JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'localizedName': localizedName,
      'logo': logo,
    };
  }
}

final List<Map<String, dynamic>> jsonData = [
  {
    "id": 42,
    "name": "Champions League",
    "localizedName": "Champions League",
    "logo": "https://template.canva.com/EAF1_XF3BJ4/2/0/1600w-dbetIJWoTcY.jpg"
  },
  {
    "id": 73,
    "name": "Europa League",
    "localizedName": "Europa League",
    "logo": "https://template.canva.com/EAGVBjukC4Q/1/0/1600w-2noOBANFgDY.jpg"
  },
  {
    "id": 9470,
    "name": "AFC Challenge League",
    "localizedName": "AFC Challenge League",
    "logo": "https://template.canva.com/EAF7iHWkPBk/2/0/1600w-Zg83G1121eU.jpg"
  },
  {
    "id": 525,
    "name": "AFC Champions League Elite",
    "localizedName": "AFC Champions League Elite",
    "logo": "https://template.canva.com/EAGHR-2mKCM/1/0/800w-_wVzUqzy2m8.jpg"
  },
  {
    "id": 10622,
    "name": "AFC Champions League Elite Qualification",
    "localizedName": "AFC Champions League Elite Qualification",
    "logo": "https://template.canva.com/EAGP4T4odfc/1/0/1600w-dIk478lEaYQ.jpg"
  },
  {
    "id": 9469,
    "name": "AFC Champions League Two",
    "localizedName": "AFC Champions League Two",
    "logo": "https://template.canva.com/EAGShYzCd9Y/1/0/800w-oWYlambiT4s.jpg"
  },
];
