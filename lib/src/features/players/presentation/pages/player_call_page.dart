import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/configs/themes/app_colors.dart';
import 'package:luanda_sport/src/core/resources/app_icons.dart';

class PlayerCallPage extends StatelessWidget {
  final String title; // Ex: "Jogo vs Kabuscorp"
  final String type; // Ex: "Jogo" ou "Treino"
  final String location; // Ex: "Estádio dos Coqueiros"
  final DateTime dateTime;
  final String status; // "Confirmado", "Pendente", "Ausente"

  const PlayerCallPage({
    super.key,
    required this.title,
    required this.type,
    required this.location,
    required this.dateTime,
    required this.status,
  });

  Color _statusColor(String status) {
    switch (status.toLowerCase()) {
      case 'confirmado':
        return Colors.green;
      case 'pendente':
        return Colors.orange;
      case 'ausente':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  IconData _typeIcon(String type) {
    switch (type.toLowerCase()) {
      case 'jogo':
        return Icons.sports_soccer;
      case 'treino':
        return Icons.fitness_center;
      case 'evento':
        return Icons.event;
      default:
        return Icons.description;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Convocatória",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: ClipOval(
                            child: CachedNetworkImage(
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                                imageUrl:
                                    "https://template.canva.com/EAGVBjukC4Q/1/0/1600w-2noOBANFgDY.jpg"),
                          ),
                          title: Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(location, style: const TextStyle()),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: Text("Aceitar")),
                            const SizedBox(width: 10),
                            ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.darkShimmerHighlightColor),
                                ),
                                onPressed: () {},
                                child: Text("Recusar"))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
