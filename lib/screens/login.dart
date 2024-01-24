import 'dart:math';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Login'),
      ),
      body: const LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Enter you email address',
                      labelText: 'Email address'),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter you password',
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: const Row(
                    children: <Widget>[
                      Text('Don\'t have an account?'),
                      TextButton(onPressed: null, child: Text('Register'))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: FilledButton(
                      onPressed: () {
                        debugPrint('Login pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(38),
                      ),
                      child: const Text('Login')
                  ),
                )
              ],
            ),
          )),
    );
  }
}
