import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyTeamsPage extends StatefulWidget {
  const MyTeamsPage({super.key});

  @override
  State<MyTeamsPage> createState() => _MyTeamsPageState();
}

class _MyTeamsPageState extends State<MyTeamsPage> {
  final List<String> teams = ['Dourada FC', 'El Fantasma', 'Optimous'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: teams.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            title: Text(teams[index]),
            subtitle: Text("Angola. Luanda, Morro Bento"),
            onTap: () {
              print("object");
              context.pushNamed('team-details');
            },
          );
        },
      ),
    );
  }
}
