// fan_settings_tab.dart
import 'package:flutter/material.dart';

class FanSettingsTab extends StatelessWidget {
  const FanSettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text('Definições',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SwitchListTile(
          title: const Text('Notificações'),
          subtitle: const Text('Receber atualizações e alertas'),
          value: true,
          onChanged: (value) {},
        ),
        ListTile(
          leading: const Icon(Icons.language),
          title: const Text('Idioma'),
          subtitle: const Text('Português'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Sair da conta'),
          onTap: () {},
        ),
      ],
    );
  }
}
