// fan_forum_tab.dart
import 'package:flutter/material.dart';

class FanForumTab extends StatelessWidget {
  const FanForumTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text('Discussões Recentes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ListTile(
          leading: Icon(Icons.chat_bubble_outline),
          title: Text('Quem será o campeão desta edição?'),
          subtitle: Text('por @joao_martins - 12 respostas'),
        ),
        ListTile(
          leading: Icon(Icons.chat_bubble_outline),
          title: Text('Melhor jogador jovem até agora?'),
          subtitle: Text('por @ana_lopes - 8 respostas'),
        ),
      ],
    );
  }
}
