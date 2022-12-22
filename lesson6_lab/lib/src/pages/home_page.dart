
import 'package:flutter/material.dart';
import 'package:lesson6_lab/src/widgets/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: crearTitulo("WOW Pizza"),
        actions: crearAcciones(context),
      ),
      body: Column(
        children: [
          crearBotones(context),
          crearContenido("images/meal.jpeg", "Pizzas WOW presenta sus productos, ¿En que le puedo ayudar?")
        ],
      ),
    );
  }
}
