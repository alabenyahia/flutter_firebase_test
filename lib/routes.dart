
import 'package:playing_arroud/screens/dashboard.dart';
import 'package:playing_arroud/screens/home.dart';
import 'package:playing_arroud/screens/login.dart';
import 'package:playing_arroud/screens/register.dart';

var appRoutes = {
  '/': (context) => const Home(),
  '/dashboard': (context) => const Dashboard(),
  '/login': (context) => const Login(),
  '/register' : (context) => const Register()
};