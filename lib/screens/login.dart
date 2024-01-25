import 'package:flutter/material.dart';

import '../services/auth.dart';

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

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                  controller: emailController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter you password',
                    labelText: 'Password',
                  ),
                  controller: passwordController,
                  obscureText: true,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child:  Row(
                    children: <Widget>[
                      const Text('Don\'t have an account?'),
                      TextButton(
                          onPressed: () => Navigator.pushNamed(context, '/register'),
                          child: const Text('Register'))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: FilledButton(
                      onPressed: () {
                        AuthService().login(emailController.text, passwordController.text);
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
