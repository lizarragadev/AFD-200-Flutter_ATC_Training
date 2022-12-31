import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final opciones = {
    '/textFields': "TextFields",
    '/checkRadio': "CheckBox & RadioButton",
    '/pickers': "Pickers & Dialog",
    '/sliderSwitch': "Slider & Switch",
    '/bottomSheet': "Bottom Sheets",
    '/expansionPanel': "Expansion Panel & Snackbar",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Lesson 8"),),
      body: ListView(
        children: crearItems(context)
      ),
    );
  }

  List<Widget> crearItems(context) {
    List<Widget> lista = [];
    opciones.forEach((key, value) {
      final tempWidget = ListTile(
        title: Text(value),
        subtitle: Text(key),
        trailing: const Icon(Icons.arrow_forward_ios_sharp),
        leading: const Icon(Icons.android),
        onTap: () {
          Navigator.pushNamed(context, key);
        },
      );
      lista
        ..add(tempWidget)
        ..add(const Divider());
    });
    return lista;
  }

}
