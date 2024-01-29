import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Dashboard'),
            onTap: () => Navigator.pushNamed(context, '/dashboard'),
          ),
          ListTile(
            title: const Text('Memberships'),
            onTap: () => Navigator.pushNamed(context, '/memberships'),
          ),
          ListTile(
            title: const Text('Members'),
            onTap: () => Navigator.pushNamed(context, '/members'),
          )
        ],
      ),
    );
  }
}
