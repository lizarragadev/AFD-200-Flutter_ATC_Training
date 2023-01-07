import 'package:flutter/material.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({Key? key}) : super(key: key);

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  String titulo = "";
  String contenido = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Nota'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese el título',
                border: OutlineInputBorder(),
              ),
              onChanged: (nuevoValor) {



              },
              textCapitalization: TextCapitalization.sentences,
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese el contenido',
                border: OutlineInputBorder(),
              ),
              onChanged: (nuevoValor) {
                setState(() {
                  contenido = nuevoValor;
                });
              },
              maxLines: 3,
              textCapitalization: TextCapitalization.sentences,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {



              },
              child: const Text("GUARDAR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
            ),
          ],
        ),
      ),
    );
  }

  void validarForm(tipo) {


  }



}