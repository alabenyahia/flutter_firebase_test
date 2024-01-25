import 'package:flutter/material.dart';
import 'package:playing_arroud/routes.dart';
import 'package:playing_arroud/shared/error.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:playing_arroud/shared/loading.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: appRoutes,
    );
  }
}



