// fan_teams_players_tab.dart
import 'package:flutter/material.dart';

class FanTeamsPlayersTab extends StatelessWidget {
  const FanTeamsPlayersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text('Destaques de Jogadores',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.person)),
          title: Text('Mário João'),
          subtitle: Text('Médio Ofensivo - 5 gols nas últimas 3 partidas'),
        ),
        Divider(),
        Text('Equipas Populares'),
        ListTile(
          leading: Icon(Icons.shield),
          title: Text('Atlético Luanda'),
          subtitle: Text('1º Lugar no Grupo A'),
        ),
      ],
    );
  }
}
