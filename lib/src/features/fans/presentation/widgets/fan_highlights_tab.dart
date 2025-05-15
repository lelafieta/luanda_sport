// fan_highlights_tab.dart
import 'package:flutter/material.dart';

class FanHighlightsTab extends StatelessWidget {
  const FanHighlightsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text('Notícias Recentes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        ListTile(
          leading: Icon(Icons.sports_soccer),
          title: Text('Vitória épica do Clube X contra o Clube Y'),
          subtitle: Text('Resumo do jogo e gols marcantes...'),
        ),
        ListTile(
          leading: Icon(Icons.flash_on),
          title: Text('Jogador Z se destaca na competição'),
          subtitle: Text('Com dois gols, foi o MVP da partida...'),
        ),
      ],
    );
  }
}
