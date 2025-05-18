import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_feed_page.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_game_page.dart';
import 'package:luanda_sport/src/features/players/presentation/pages/player_call_page.dart';
import 'package:luanda_sport/src/features/players/presentation/pages/player_game_page.dart';
import 'package:luanda_sport/src/features/players/presentation/pages/player_stats_page.dart';
import 'package:luanda_sport/src/features/teams/presentation/pages/my_teams_page.dart';
import '../../../../configs/themes/app_colors.dart';
import '../../../../core/resources/app_icons.dart';

class ListTeamsPage extends StatefulWidget {
  const ListTeamsPage({super.key});

  @override
  State<ListTeamsPage> createState() => _ListTeamsPageState();
}

class _ListTeamsPageState extends State<ListTeamsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor,
            child: TabBar(
              controller: _tabController,
              tabAlignment: TabAlignment.start,
              isScrollable: true,
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
                      Text('Meus Teams', style: TextStyle()),
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
                      Text('Teams Favoritos', style: TextStyle()),
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
                      Text('Outros Teams', style: TextStyle()),
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
                MyTeamsPage(),
                PlayerCallPage(
                  title: 'Jogo vs Kabuscorp',
                  type: 'Jogo',
                  location: 'Estádio dos Coqueiros',
                  dateTime: DateTime(2025, 5, 18, 15, 0),
                  status: 'Confirmado',
                ),
                Text(""),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
