import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luanda_sport/src/core/resources/app_icons.dart';

class PlayerStatsPage extends StatefulWidget {
  const PlayerStatsPage({super.key});

  @override
  State<PlayerStatsPage> createState() => _PlayerStatsPageState();
}

class _PlayerStatsPageState extends State<PlayerStatsPage> {
  final List<String> teams = [
    'Manchester United',
    'Real Madrid',
    'Juventus',
    'Al-Nassr'
  ];
  String selectedTeam = 'Manchester United';

  late Player player;

  @override
  void initState() {
    super.initState();
    player = _getStatsForTeam(selectedTeam);
  }

  Player _getStatsForTeam(String team) {
    // Simulando estatísticas por time
    switch (team) {
      case 'Real Madrid':
        return Player(
            name: 'Cristiano Ronaldo',
            goals: 450,
            assists: 120,
            yellowCards: 40,
            redCards: 2,
            appearances: 438,
            minutesPlayed: 36000,
            averageGoalsPerGame: 1.02,
            winPercentage: 75.3);
      case 'Juventus':
        return Player(
            name: 'Cristiano Ronaldo',
            goals: 101,
            assists: 22,
            yellowCards: 15,
            redCards: 1,
            appearances: 134,
            minutesPlayed: 11000,
            averageGoalsPerGame: 0.75,
            winPercentage: 65.0);
      case 'Al-Nassr':
        return Player(
            name: 'Cristiano Ronaldo',
            goals: 35,
            assists: 10,
            yellowCards: 5,
            redCards: 0,
            appearances: 45,
            minutesPlayed: 4000,
            averageGoalsPerGame: 0.77,
            winPercentage: 68.0);
      default:
        return Player(
            name: 'Cristiano Ronaldo',
            goals: 145,
            assists: 84,
            yellowCards: 59,
            redCards: 8,
            appearances: 553,
            minutesPlayed: 39000,
            averageGoalsPerGame: 0.43,
            winPercentage: 55.1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: DropdownButtonFormField<String>(
              value: selectedTeam,
              decoration: const InputDecoration(
                labelText: 'Select Team',
                border: OutlineInputBorder(),
              ),
              items: teams
                  .map((team) => DropdownMenuItem(
                        value: team,
                        child: Text(team),
                      ))
                  .toList(),
              onChanged: (team) {
                if (team != null) {
                  setState(() {
                    selectedTeam = team;
                    player = _getStatsForTeam(team);
                  });
                }
              },
            ),
          ),
          Expanded(child: _buildStatsList(player)),
        ],
      ),
    );
  }

  Widget _buildStatItem(String icon, String label, String value) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon, width: 22),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildStatsList(Player player) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildStatItem(AppIcons.footballBall, 'Goals', player.goals.toString()),
        _buildStatItem(
            AppIcons.footballShoesShoe, 'Assists', player.assists.toString()),
        _buildStatItem(AppIcons.yellowSquare, 'Yellow Cards',
            player.yellowCards.toString()),
        _buildStatItem(
            AppIcons.redSquare, 'Red Cards', player.redCards.toString()),
        _buildStatItem(AppIcons.footballPlayerSpain, 'Appearances',
            player.appearances.toString()),
        const SizedBox(height: 20),
        const Text(
          'Note: These are sample stats and may not reflect actual player data.',
          style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}

class Player {
  final String name;
  final int goals;
  final int assists;
  final int yellowCards;
  final int redCards;
  final int appearances;
  final int minutesPlayed;
  final double averageGoalsPerGame;
  final double winPercentage;

  Player({
    required this.name,
    required this.goals,
    required this.assists,
    required this.yellowCards,
    required this.redCards,
    required this.appearances,
    required this.minutesPlayed,
    required this.averageGoalsPerGame,
    required this.winPercentage,
  });
}
