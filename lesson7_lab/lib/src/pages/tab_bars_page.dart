import 'package:flutter/material.dart';

class TabBarsPage extends StatelessWidget {
  const TabBarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("TabBars"),),
      body: Text("Hola"),
    );
  }
}
