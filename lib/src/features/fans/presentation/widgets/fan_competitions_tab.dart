// fan_competitions_tab.dart
import 'package:flutter/material.dart';

class FanCompetitionsTab extends StatelessWidget {
  const FanCompetitionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text('Competições em Andamento',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        ListTile(
          leading: Icon(Icons.emoji_events),
          title: Text('Campeonato Nacional Sub-20'),
          subtitle: Text('Fase de grupos • Rodada 3'),
        ),
        ListTile(
          leading: Icon(Icons.emoji_events),
          title: Text('Taça Futuro Angola'),
          subtitle: Text('Quartas de final começam este fim de semana'),
        ),
      ],
    );
  }
}
