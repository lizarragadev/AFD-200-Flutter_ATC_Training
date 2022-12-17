import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      body: _crearBody(),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Cantidad de clicks realizados",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text("$contador", style: const TextStyle(
            fontSize: 70, fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: resetear, child: const Icon(Icons.reset_tv,),
        ),
        const SizedBox(width: 10,),
        FloatingActionButton(
          onPressed: reducir, child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 10,),
        FloatingActionButton(
          onPressed: adicionar, child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void adicionar() => setState(() { contador++; });
  void reducir() => setState(() { contador--; });
  void resetear() => setState(() { contador = 0; });

}

