import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/configs/themes/app_fonts.dart';
import 'package:luanda_sport/src/core/utils/equipment_widget_utils.dart';

import '../../../../core/resources/app_icons.dart';

class TeamInformationPgae extends StatefulWidget {
  const TeamInformationPgae({super.key});

  @override
  State<TeamInformationPgae> createState() => _TeamInformationPgaeState();
}

class _TeamInformationPgaeState extends State<TeamInformationPgae> {
  final String backgroundUrl =
      'https://cdn.pixabay.com/photo/2014/10/14/20/24/football-488714_1280.jpg';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  // Imagem de capa
                  Image.network(
                    backgroundUrl,
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black54,
                    ),
                  ),
                  Positioned(
                    bottom: -60,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70, // aumentado o tamanho do círculo
                          backgroundColor: Colors.white,
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://template.canva.com/EAFIdCv-0nM/2/0/1600w-5hVwFdf1IjU.jpg",
                            imageBuilder: (context, imageProvider) =>
                                CircleAvatar(
                              radius: 66, // aumentado o tamanho da imagem
                              backgroundImage: imageProvider,
                            ),
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: const Icon(Icons.verified,
                                color: Colors.blue, size: 22),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Text(
                      'Dourada FC',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              // Informações adicionais
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: AppFonts.primaryFont,
                  ),
                  children: [
                    const TextSpan(
                      text: '3',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' Colaboradores • ',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const TextSpan(
                      text: '3,5 M',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' seguidores',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.location_on, color: Colors.grey),
              const SizedBox(width: 5),
              Text("Angola, Luanda, Bairro Uige"),
            ],
          ),
          ListView(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // Get.to(BuildEquipamentPage(
                        //   teamData: equipament,
                        // ));
                      },
                      child: Container(
                        height: 150,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: EquipmentWidgetUtils
                                        .equipamentFrontComponent(),
                                  ),
                                  Expanded(
                                    child: EquipmentWidgetUtils
                                        .equipamentBackComponent(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ListTile(
                leading: SvgPicture.asset(
                  AppIcons.userColor,
                  width: 26,
                ),
                title: Text(
                  'Gerente',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                subtitle: Text(
                  'Dourada FC',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  AppIcons.flag2,
                  width: 26,
                ),
                title: Text(
                  'Fundado aos',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                subtitle: Text(
                  '${AppDateUtils.formatDate(data: team.foundedAt!)} - (${AppDateUtils.getYearDifference(team.foundedAt!)} anos)',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  AppIcons.footballJersey,
                  width: 26,
                ),
                title: Text(
                  'QTD. Jogadores',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                subtitle: Text(
                  team.memberLimit.toString(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              // RichText(
              //   text: TextSpan(
              //     style: Theme.of(context).textTheme.bodyMedium,
              //     children: [
              //       TextSpan(
              //         text: 'Trofeos',
              //         style: Theme.of(context).textTheme.titleLarge,
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 8),
              // Container(
              //   padding: const EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //     color: AppColors.primary.withOpacity(.1),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Container(
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               SvgPicture.asset(
              //                 AppIcons.medalChampionAward3,
              //               ),
              //               const SizedBox(height: 5),
              //               Text(
              //                 "10",
              //                 style: Theme.of(context).textTheme.titleMedium,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               SvgPicture.asset(
              //                 AppIcons.medalChampionAward1,
              //               ),
              //               const SizedBox(height: 5),
              //               Text(
              //                 "1",
              //                 style: Theme.of(context).textTheme.titleMedium,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               SvgPicture.asset(
              //                 AppIcons.medalChampionAward2,
              //               ),
              //               const SizedBox(height: 5),
              //               Text(
              //                 "2",
              //                 style: Theme.of(context).textTheme.titleMedium,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              //   // child: ListTile(
              //   //   leading: const Icon(Icons.emoji_events, color: Colors.amber),
              //   //   title: const Text('1000000 \$ - Valor do grande prêmio'),
              //   // ),
              // ),
              const SizedBox(height: 16),
              ListTile(
                leading: SvgPicture.asset(
                  AppIcons.money,
                  width: 40,
                ),
                title: const Text('Taxa de registro'),
                subtitle: const Text('10 \$'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
