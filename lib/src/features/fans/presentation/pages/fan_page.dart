import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_feed_page.dart';
import 'package:luanda_sport/src/features/fans/presentation/pages/fan_game_page.dart';
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppIcons.rss,
                        width: 25,
                        color: selectedTabIndex == 0
                            ? Colors.white
                            : AppColors.lightWightColor.withOpacity(.6),
                      ),
                      const SizedBox(width: 10),
                      Text('Feed', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppIcons.football,
                        width: 25,
                        color: selectedTabIndex == 0
                            ? Colors.white
                            : AppColors.lightWightColor.withOpacity(.6),
                      ),
                      const SizedBox(width: 10),
                      Text('Jogos', style: TextStyle(fontSize: 16)),
                    ],
                  ),
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
