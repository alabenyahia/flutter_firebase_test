import 'package:flutter/material.dart';
import 'package:playing_arroud/services/auth.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Register'),
      ),
      body: const RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
                      icon: Icon(Icons.person),
                      hintText: 'Enter you name',
                      labelText: 'Name'),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.contact_emergency),
                      hintText: 'Enter you gym name',
                      labelText: 'Gym name'),
                ),
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
                      const Text('Already a member?'),
                      TextButton(
                          onPressed: () => Navigator.pushNamed(context, '/login'),
                          child: const Text('Login'))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: FilledButton(
                      onPressed: () {
                        AuthService().register(emailController.text, passwordController.text);
                      },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(38),
                    ),
                    child: const Text('Register'),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
