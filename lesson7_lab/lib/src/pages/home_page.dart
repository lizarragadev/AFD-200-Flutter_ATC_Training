import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final opciones = {
    '/bottomNav': "Bottom Navigation Bar" ,
    '/tabs': 'Tab Bars',
    '/drawers': 'Drawers',
    '/listview': 'ListView y ListTiles',
    '/dataTable': 'Data Tables',
    '/selectableText': 'Selectable text',
    '/stack': 'Stacks',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Lesson 7"),
      ),
      body: ListView(
        children: crearItems(context),
      ),
    );
  }

  List<Widget> crearItems(context) {
    List<Widget> lista = [];
    opciones.forEach((key, value) {
      final tempWidget = ListTile(
        title: Text(value),
        subtitle: Text(key),
        leading: Icon(Icons.android_rounded),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.pushNamed(context, key);
        },
      );
      lista.add(tempWidget);
    });
    return lista;
  }

}
