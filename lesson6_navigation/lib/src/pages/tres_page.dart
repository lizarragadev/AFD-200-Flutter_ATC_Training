import 'package:flutter/material.dart';

class TresPage extends StatelessWidget {
  final String valor;
  const TresPage({Key? key, required this.valor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina tres"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Volver")
            ),
            const SizedBox(height: 30,),
            Text(valor)
          ],
        ),
      ),
    );
  }
}
