import 'package:flutter/material.dart';

import '../shared/app_drawer.dart';

class AddMember extends StatelessWidget {
  const AddMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Add Member'),
        ),
        drawer: const AppDrawer(),
        body: const Text('Add member')
    );
  }
}
