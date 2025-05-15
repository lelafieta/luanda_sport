// fan_rankings_tab.dart
import 'package:flutter/material.dart';

class FanRankingsTab extends StatelessWidget {
  const FanRankingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const Text('Ranking Geral',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Expanded(
          child: ListView(
            children: const [
              ListTile(
                  title: Text('1. Atlético Luanda'), trailing: Text('23 pts')),
              ListTile(title: Text('2. FC Benguela'), trailing: Text('20 pts')),
              ListTile(
                  title: Text('3. Desportivo do Zango'),
                  trailing: Text('18 pts')),
            ],
          ),
        ),
      ],
    );
  }
}
