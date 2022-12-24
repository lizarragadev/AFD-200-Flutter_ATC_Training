import 'package:flutter/material.dart';

class DrawersPage extends StatelessWidget {
  const DrawersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Drawers"),),
      body: Text("Hola"),
    );
  }
}
