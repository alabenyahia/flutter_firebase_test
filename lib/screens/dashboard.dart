import 'package:flutter/material.dart';
import 'package:playing_arroud/services/auth.dart';
import 'package:playing_arroud/shared/app_drawer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dashboard'),
      ),
      drawer: const AppDrawer(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(child: Text(AuthService().user != null ? 'Welcome ${AuthService().user} to dashboard screen'
              : 'Dashboard screen: no user signed in')),
          FilledButton(
              onPressed: () async {
                await AuthService().logOut();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
              },
              child: const Text('Logout'))
        ],
      ),
    );
  }
}
