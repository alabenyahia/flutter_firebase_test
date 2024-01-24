import 'package:flutter/material.dart';

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
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter you password',
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
              ],
            ),
          )),
    );
  }
}
