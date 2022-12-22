import 'package:flutter/material.dart';
import 'package:lesson6_lab/src/widgets/utils.dart';

class VegetarianaPage extends StatelessWidget {
  const VegetarianaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: crearTitulo("Pizza Vegetariana"),
        actions: crearAcciones(context),
      ),
      body: Column(
        children: [
          crearBotones(context),
          crearContenido("images/pizza1.png", "`")
        ],
      ),
    );
  }
}
