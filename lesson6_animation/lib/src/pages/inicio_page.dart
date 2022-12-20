import 'package:flutter/material.dart';
import 'package:lesson6_animation/src/pages/detalle_page.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animacion"),),
      body: GestureDetector(
        child: const Hero(
          tag: "imageHero",
          child: Image(
            image: AssetImage("images/pizza.png"),
            width: 170,
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetallePage();
          }));
        },
      ),
    );
  }
}
