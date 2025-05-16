import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_feed_page.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_game_page.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_competitions_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_feed_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_forum_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_players_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_teams_tab.dart';

import '../../../../configs/themes/app_colors.dart';
import '../../../../core/resources/app_icons.dart';

class FanPage extends StatefulWidget {
  const FanPage({super.key});

  @override
  State<FanPage> createState() => _FanPageState();
}

class _FanPageState extends State<FanPage> with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 0;

  // final List<Tab> myTabs = const [
  //   Tab(icon: Icon(Icons.home), text: 'Início'),
  //   Tab(icon: Icon(Icons.lightbulb), text: 'Palpites'),
  //   Tab(icon: Icon(Icons.calendar_today), text: 'Jogos'),
  //   Tab(icon: Icon(Icons.forum), text: 'Fórum'),
  //   Tab(icon: Icon(Icons.emoji_events), text: 'Conquistas'),
  //   Tab(icon: Icon(Icons.leaderboard), text: 'Rankings'),
  // ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
              tabAlignment: TabAlignment.fill,
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
                  icon: SvgPicture.asset(
                    AppIcons.football,
                    width: 20,
                    color: selectedTabIndex == 0
                        ? Colors.white
                        : AppColors.lightWightColor.withOpacity(.6),
                  ),
                  text: 'Feed',
                ),
                Tab(
                  icon: SvgPicture.asset(
                    AppIcons.populationGlobe,
                    color: selectedTabIndex == 1
                        ? Colors.white
                        : AppColors.lightWightColor.withOpacity(.6),
                  ),
                  text: 'Jogos',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                FanFeedPage(),
                FanGamePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
