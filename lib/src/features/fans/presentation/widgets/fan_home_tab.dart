import 'package:flutter/material.dart';

class FanHomeTab extends StatelessWidget {
  const FanHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final highlights = [
      {
        'title': 'Final da Taça Nacional',
        'description': 'Grande final entre Sporting e Petro de Luanda.'
      },
      {
        'title': 'Melhores Jogadores da Semana',
        'description': 'Confira os destaques da última jornada.'
      },
    ];

    final upcomingMatches = [
      {'teams': '1º de Agosto vs Interclube', 'date': 'Sábado, 18 de Maio'},
      {'teams': 'Bravos do Maquis vs Kabuscorp', 'date': 'Domingo, 19 de Maio'},
    ];

    final updates = [
      'Nova atualização disponível: notificações em tempo real!',
      'Adicionado suporte para estatísticas detalhadas por jogador.',
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('📰 Destaques',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...highlights.map((h) => Card(
                child: ListTile(
                  title: Text(h['title']!),
                  subtitle: Text(h['description']!),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {}, // Detalhes da notícia
                ),
              )),
          const SizedBox(height: 24),
          const Text('📅 Jogos em Destaque',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...upcomingMatches.map((m) => Card(
                child: ListTile(
                  title: Text(m['teams']!),
                  subtitle: Text(m['date']!),
                  trailing: const Icon(Icons.sports_soccer),
                ),
              )),
          const SizedBox(height: 24),
          const Text('🔔 Atualizações Recentes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...updates.map((u) => Card(
                child: ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: Text(u),
                ),
              )),
        ],
      ),
    );
  }
}
