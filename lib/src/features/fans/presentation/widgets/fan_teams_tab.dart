import 'package:flutter/material.dart';
import 'package:luanda_sport/src/features/fans/presentation/components/fan_competition_component.dart';
import 'package:luanda_sport/src/features/fans/presentation/components/fan_team_component.dart';

class FanTeamsTab extends StatelessWidget {
  const FanTeamsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const FanTeamComponent();
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.grey.shade200,
        );
      },
    );
  }
}
