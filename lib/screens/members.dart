import 'package:flutter/material.dart';

import '../shared/add_fab.dart';
import '../shared/app_drawer.dart';

class Members extends StatelessWidget {
  const Members({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Members'),
        ),
        drawer: const AppDrawer(),
        floatingActionButton: const AddFAB(path: '/add_member'),
        body: const Text('Members')
    );
  }
}
