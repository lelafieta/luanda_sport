import 'package:flutter/material.dart';

class FanPage extends StatelessWidget {
  const FanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Adepto'),
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(icon: Icon(Icons.newspaper), text: 'Notícias'),
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
            FanHighlightsTab(),
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

class FanHighlightsTab extends StatelessWidget {
  const FanHighlightsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Notícias & Destaques'));
  }
}

class FanCompetitionsTab extends StatelessWidget {
  const FanCompetitionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Competições'));
  }
}

class FanTeamsPlayersTab extends StatelessWidget {
  const FanTeamsPlayersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Equipas e Jogadores'));
  }
}

class FanRankingsTab extends StatelessWidget {
  const FanRankingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Rankings & Estatísticas'));
  }
}

class FanForumTab extends StatelessWidget {
  const FanForumTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Fórum / Comentários'));
  }
}

class FanFavoritesTab extends StatelessWidget {
  const FanFavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Favoritos'));
  }
}

class FanSettingsTab extends StatelessWidget {
  const FanSettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Definições'));
  }
}
