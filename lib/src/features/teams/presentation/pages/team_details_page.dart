import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/configs/themes/app_colors.dart';
import 'package:luanda_sport/src/core/resources/app_icons.dart';
import 'package:luanda_sport/src/features/players/presentation/pages/player_call_page.dart';
import 'package:luanda_sport/src/features/teams/presentation/pages/lineup_page.dart';
import 'package:luanda_sport/src/features/teams/presentation/pages/my_teams_page.dart';

class TeamDetailsPage extends StatefulWidget {
  const TeamDetailsPage({super.key});

  @override
  State<TeamDetailsPage> createState() => _TeamDetailsPageState();
}

class _TeamDetailsPageState extends State<TeamDetailsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
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
                      Text('Informações', style: TextStyle()),
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
                      Text('Feed', style: TextStyle()),
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
                      Text('Competições', style: TextStyle()),
                    ],
                  ),
                ),
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
                      Text('Elenco', style: TextStyle()),
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
                      Text('Configurações', style: TextStyle()),
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
                Text(""),
                Text(""),
                Text(""),
                LineUpPage(),
                Text(""),
                Text(""),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
