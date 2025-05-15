import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/configs/themes/app_colors.dart';
import 'package:luanda_sport/src/core/resources/app_icons.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_competitions_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_favorites_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_forum_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_home_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_rankings_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_settings_tab.dart';
import 'package:luanda_sport/src/features/fans/presentation/widgets/fan_teams_players_tab.dart';

class FanPage extends StatelessWidget {
  const FanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipOval(
              child: Container(
                width: 45,
                height: 45,
                color: Colors.grey,
              ),
            ),
            title: const Text(
              'Lela Fieta',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              'Adepto',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.bell,
                color: Colors.white,
              ),
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(icon: Icon(Icons.newspaper), text: 'Feed'),
              Tab(icon: Icon(Icons.emoji_events), text: 'Competições'),
              Tab(icon: Icon(Icons.groups), text: 'Equipas'),
              Tab(icon: Icon(Icons.bar_chart), text: 'Rankings'),
              Tab(icon: Icon(Icons.forum), text: 'Fórum'),
              Tab(icon: Icon(Icons.favorite), text: 'Favoritos'),
              Tab(icon: Icon(Icons.settings), text: 'Definições'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FanHomeTab(),
            FanCompetitionsTab(),
            FanTeamsPlayersTab(),
            FanRankingsTab(),
            FanForumTab(),
            FanFavoritesTab(),
            FanSettingsTab(),
          ],
        ),
      ),
    );
  }
}
