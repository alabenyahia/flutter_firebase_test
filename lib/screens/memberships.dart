import 'package:flutter/material.dart';

import '../shared/app_drawer.dart';

class Memberships extends StatelessWidget {
  const Memberships({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Membership'),
      ),
      drawer: const AppDrawer(),
      body: const Text('Memberships')
    );
  }
}
