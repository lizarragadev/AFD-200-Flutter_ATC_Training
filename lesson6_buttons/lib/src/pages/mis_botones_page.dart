import 'package:flutter/material.dart';

class MisBotonesPage extends StatefulWidget {
  const MisBotonesPage({Key? key}) : super(key: key);

  @override
  State<MisBotonesPage> createState() => _MisBotonesPageState();
}

class _MisBotonesPageState extends State<MisBotonesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _miAppBar(),
      body: _body(),
    );
  }

  PreferredSizeWidget _miAppBar() {
    return AppBar(
      title: Text("Botones"),
      actions: [
        IconButton(
            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Click en Email")));},
            icon: Icon(Icons.email)),
        IconButton(
            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Click en Email")));},
            icon: Icon(Icons.delete)),
        IconButton(
            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Click en Email")));},
            icon: Icon(Icons.check)),
        PopupMenuButton(itemBuilder: (BuildContext ctx)=>[
          PopupMenuItem(child: Text("Opcion 1"), value: '1'),
          PopupMenuItem(child: Text("Opcion 2"), value: '2'),
          PopupMenuItem(child: Text("Opcion 3"), value: '3'),
        ],
        onSelected: (selectedValue) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Click en $selectedValue")));
        },)
      ],
    );
  }

  Widget _body() {
    return Text("Hola");
  }
}
