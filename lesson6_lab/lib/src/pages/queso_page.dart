import 'package:flutter/material.dart';
import 'package:lesson6_lab/src/widgets/utils.dart';

class QuesoPage extends StatelessWidget {
  const QuesoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: crearTitulo("Pizza de Queso"),
        actions: crearAcciones(context),
      ),
      body: Column(
        children: [
          crearBotones(context),
          crearContenido("images/pizza3.png", "`")
        ],
      ),
    );
  }
}
