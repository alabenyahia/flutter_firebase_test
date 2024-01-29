import 'package:flutter/material.dart';

class AddFAB extends StatelessWidget {
  const AddFAB({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, path);
      },
      child: const Icon(Icons.add),
    );
  }
}

