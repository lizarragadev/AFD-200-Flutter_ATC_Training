import 'package:flutter/material.dart';

class StacksPage extends StatelessWidget {
  const StacksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Stacks"),),
      body: Text("Hola"),
    );
  }
}
