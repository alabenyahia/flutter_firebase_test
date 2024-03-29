
import 'package:playing_arroud/screens/add_member.dart';
import 'package:playing_arroud/screens/add_membership.dart';
import 'package:playing_arroud/screens/dashboard.dart';
import 'package:playing_arroud/screens/home.dart';
import 'package:playing_arroud/screens/login.dart';
import 'package:playing_arroud/screens/members.dart';
import 'package:playing_arroud/screens/memberships.dart';
import 'package:playing_arroud/screens/register.dart';

var appRoutes = {
  '/': (context) => const Home(),
  '/dashboard': (context) => const Dashboard(),
  '/login': (context) => const Login(),
  '/register' : (context) => const Register(),
  '/memberships' : (context) => const Memberships(),
  '/members' : (context) => const Members(),
  '/add_membership' : (context) => const AddMembership(),
  '/add_member' : (context) => const AddMember(),
};