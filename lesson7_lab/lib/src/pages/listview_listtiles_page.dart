import 'package:flutter/material.dart';

class ListViewListTilesPage extends StatelessWidget {
  const ListViewListTilesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("ListView y ListTile"),),
      body: Text("Hola"),
    );;
  }
}
