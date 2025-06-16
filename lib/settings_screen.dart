import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkTheme = false;
  bool _notificationsEnabled = true;
  String _selectedLanguage = 'Português';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Tema Escuro'),
            value: _darkTheme,
            onChanged: (val) => setState(() => _darkTheme = val),
          ),
          SwitchListTile(
            title: const Text('Notificações'),
            value: _notificationsEnabled,
            onChanged: (val) => setState(() => _notificationsEnabled = val),
          ),
          ListTile(
            title: const Text('Idioma'),
            trailing: DropdownButton<String>(
              value: _selectedLanguage,
              items: const [
                DropdownMenuItem(value: 'Português', child: Text('Português')),
                DropdownMenuItem(value: 'Inglês', child: Text('Inglês')),
              ],
              onChanged: (val) => setState(() {
                if (val != null) _selectedLanguage = val;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
