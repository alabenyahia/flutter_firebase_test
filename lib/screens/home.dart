

import 'package:flutter/material.dart';
import 'package:playing_arroud/screens/dashboard.dart';
import 'package:playing_arroud/shared/loading.dart';
import 'package:playing_arroud/shared/error.dart';
import 'package:playing_arroud/screens/login.dart';

import '../services/auth.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Loading();
        } else if (snapshot.hasError) {
          return const Error();
        } else if (snapshot.hasData) {
          return const Dashboard();
        } else {
          return const Login();
        }
      },
    );
  }
}
