import 'package:flutter/material.dart';

class ClassWorkScreen extends StatelessWidget {
  const ClassWorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Center(
        child: const Text(
          'ClassWork Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}