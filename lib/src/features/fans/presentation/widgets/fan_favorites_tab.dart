// fan_favorites_tab.dart
import 'package:flutter/material.dart';

class FanFavoritesTab extends StatelessWidget {
  const FanFavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text('Favoritos',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Clube Kabuscorp'),
          subtitle: Text('Notificações ativadas'),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Jogador Carlos Tavares'),
          subtitle: Text('Médio defensivo - destaque da semana'),
        ),
      ],
    );
  }
}
