import 'package:flutter/material.dart';

class LaboratorioPage extends StatelessWidget {
  const LaboratorioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Laboratorio 5"),
        backgroundColor: Colors.deepOrange,
      ),
      body: _creaCards(),
    );
  }

  Widget _creaCards() {
    return ListView(
      padding: const EdgeInsets.all(5),
      children: [
        _creaCard("images/pizza1.png", "Pizza Vegetariana"),
        _creaCard("images/pizza2.png", "Pizza Carnivora"),
        _creaCard("images/pizza3.png", "Pizza Carnivora"),
        _creaCard("images/pizza1.png", "Pizza Vegetariana"),
        _creaCard("images/pizza2.png", "Pizza Carnivora"),
        _creaCard("images/pizza3.png", "Pizza Carnivora"),
        _creaCard("images/pizza1.png", "Pizza Vegetariana"),
        _creaCard("images/pizza2.png", "Pizza Carnivora"),
        _creaCard("images/pizza3.png", "Pizza Carnivora"),
        _creaCard("images/pizza1.png", "Pizza Vegetariana"),
        _creaCard("images/pizza2.png", "Pizza Carnivora"),
        _creaCard("images/pizza3.png", "Pizza Carnivora"),
      ],
    );
  }

  Widget _creaCard(String imagen, String nombre) {
    return Card(
        color: Colors.deepOrangeAccent,
        child: Container(
          padding: const EdgeInsets.all(7),
          child: Row(
            children: [
              Image(
                image: AssetImage(imagen), width: 50,),
              const SizedBox(width: 15,),
              Flexible(
                child: Text(
                  nombre,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        )
    );
  }
}
