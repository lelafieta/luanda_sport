import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_feed_page.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_game_page.dart';
import 'package:luanda_sport/src/features/players/presentation/pages/player_call_page.dart';
import 'package:luanda_sport/src/features/players/presentation/pages/player_game_page.dart';
import 'package:luanda_sport/src/features/players/presentation/pages/player_stats_page.dart';
import '../../../../configs/themes/app_colors.dart';
import '../../../../core/resources/app_icons.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              unselectedLabelColor: AppColors.lightWightColor.withOpacity(.6),
              labelColor: AppColors.lightWightColor,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              onTap: (value) {
                setState(() {
                  selectedTabIndex = value;
                });
              },
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppIcons.football,
                        width: 20,
                        color: selectedTabIndex == 0
                            ? Colors.white
                            : AppColors.lightWightColor.withOpacity(.6),
                      ),
                      const SizedBox(width: 10),
                      Text('Jogos', style: TextStyle()),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppIcons.taskChecklist,
                        width: 20,
                        color: selectedTabIndex == 1
                            ? Colors.white
                            : AppColors.lightWightColor.withOpacity(.6),
                      ),
                      const SizedBox(width: 10),
                      Text('Convocatórias', style: TextStyle()),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppIcons.medal,
                        width: 20,
                        color: selectedTabIndex == 2
                            ? Colors.white
                            : AppColors.lightWightColor.withOpacity(.6),
                      ),
                      const SizedBox(width: 10),
                      const Text('Estatísticas', style: TextStyle()),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppIcons.timePast,
                        width: 20,
                        color: selectedTabIndex == 3
                            ? Colors.white
                            : AppColors.lightWightColor.withOpacity(.6),
                      ),
                      const SizedBox(width: 10),
                      Text('Histórico', style: TextStyle()),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                PlayerGamePage(),
                PlayerCallPage(
                  title: 'Jogo vs Kabuscorp',
                  type: 'Jogo',
                  location: 'Estádio dos Coqueiros',
                  dateTime: DateTime(2025, 5, 18, 15, 0),
                  status: 'Confirmado',
                ),
                PlayerStatsPage(),
                FanGamePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
