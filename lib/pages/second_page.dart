import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вторая страница'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
