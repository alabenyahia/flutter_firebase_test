import 'package:flutter/material.dart';

import '../shared/app_drawer.dart';

class AddMembership extends StatelessWidget {
  const AddMembership({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Add Membership'),
        ),
        drawer: const AppDrawer(),
        body: const Text('Add membership')
    );
  }
}
