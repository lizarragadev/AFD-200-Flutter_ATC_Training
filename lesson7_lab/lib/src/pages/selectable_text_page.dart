import 'package:flutter/material.dart';

class SelectableTextPage extends StatelessWidget {
  const SelectableTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Selectable Text"),),
      body: Text("Hola"),
    );
  }
}
