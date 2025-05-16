import 'dart:ui';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_page.dart';

import '../../../../configs/themes/app_colors.dart';
import '../../../../core/resources/app_icons.dart';
import '../../../../core/resources/app_images.dart';

class LuandaSportPage extends StatefulWidget {
  final Map<dynamic, String?>? arguments;
  const LuandaSportPage({super.key, this.arguments});

  @override
  State<LuandaSportPage> createState() => _LuandaSportPageState();
}

class _LuandaSportPageState extends State<LuandaSportPage> {
  var _currentIndex = 0;
  late List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      const FanPage(),
      const Text("Live"),
      const Text("Profile"),
      const Text("Settings"),
    ];
  }

  List<String> iconList = [
    AppIcons.houseChimney,
    AppIcons.whistle,
    AppIcons.videoCameraAlt,
    AppIcons.settings2
  ];

  List<String> iconListBold = [
    AppIcons.houseChimneyBold,
    AppIcons.whistleBold,
    AppIcons.videoCameraAltBold,
    AppIcons.settings2
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.bg2),
          opacity: .2,
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "Adepto",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppIcons.bell,
                  color: AppColors.lightWightColor,
                ))
          ],
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      DrawerHeader(
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: const Text(
                            'Jesse Lingard',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            'Organizador',
                            style: TextStyle(
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          leading: const CircleAvatar(
                            backgroundImage: AssetImage(AppImages.avatar),
                          ),
                          trailing: SvgPicture.asset(
                            AppIcons.changePosition,
                            width: 26,
                            color: AppColors.lightWightColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: const Text(
                          "Painel",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          AppIcons.achievementChallengeMedal,
                          width: 26,
                        ),
                        title: Text('Campeonatos'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          AppIcons.emblem,
                          width: 26,
                        ),
                        title: Text('Equipas'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          AppIcons.contractPaper,
                          width: 26,
                        ),
                        title: Text('Inscrições'),
                        onTap: () {
                          // Navigator.pop(context)
                        },
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          AppIcons.settings2,
                          width: 26,
                        ),
                        title: Text('Configurações'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Text("Pacotes")
              ],
            ),
          ),
        ),
        body: widgets[_currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          backgroundColor: Colors.white,
          itemCount: iconList.length,
          activeIndex: _currentIndex,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 0,
          rightCornerRadius: 0,
          height: 60,
          shadow: BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 100,
          ),
          onTap: (index) => setState(() => _currentIndex = index),
          tabBuilder: (int index, bool isActive) {
            return IconButton(
              icon: SvgPicture.asset(
                (isActive) ? iconListBold[index] : iconList[index],
                width: 20,
                color: (isActive)
                    ? AppColors.primaryColor
                    : Colors.black.withOpacity(.6),
              ),
              onPressed: () => setState(() => _currentIndex = index),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showBlurModal(context),
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildItem(String iconPath, String label, Function() onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: ListTile(
        leading: SvgPicture.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        title: Text(
          label,
          style: const TextStyle(fontSize: 18),
        ),
        onTap: onTap,
      ),
    );
  }

  void _showBlurModal(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "MENU BÁSICO",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Divider(color: Colors.grey.shade300),
                    _buildItem(
                        AppIcons.competitionchampion, "Novo Campeonato", () {}),
                    _buildItem(AppIcons.footballJersey, "Nova Equipe", () {}),
                    _buildItem(AppIcons.userColor, "Novo Jogador", () {}),
                    _buildItem(
                        AppIcons.copyLink, "Participar em torneio", () {}),
                    _buildItem(AppIcons.copyLink, "Convidar Equipes", () {}),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _showBlurModalChangeProfile(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Trocar Perfil",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Divider(color: Colors.grey.shade300),
                    _buildItem(AppIcons.competitionchampion, "Adepto", () {}),
                    _buildItem(AppIcons.footballJersey, "Organizador", () {}),
                    _buildItem(AppIcons.footballJersey, "Árbitro", () {}),
                    _buildItem(AppIcons.userColor, "Jogador", () {}),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
