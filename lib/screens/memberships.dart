import 'package:flutter/material.dart';
import 'package:playing_arroud/shared/add_fab.dart';

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
      floatingActionButton: const AddFAB(path: '/add_membership'),
      body: const Text('Memberships'),
    );
  }
}
