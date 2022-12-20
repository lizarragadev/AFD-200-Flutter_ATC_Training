import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalle Imagen"),),
      body: GestureDetector(
        child: const Center(
          child: Hero(
            tag: "imageHero",
            child: Image(
              image: AssetImage("images/pizza.png"),
              width: 350,
            ),
          ),
        ),
        onLongPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
