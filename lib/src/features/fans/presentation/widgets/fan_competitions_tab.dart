import 'package:flutter/material.dart';
import 'package:luanda_sport/src/features/fans/presentation/components/fan_competition_component.dart';

class FanCompetitionsTab extends StatelessWidget {
  const FanCompetitionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 5,
      itemBuilder: (context, index) {
        return FanCompetitionComponent();
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.grey.shade200,
        );
      },
    );
  }
}
