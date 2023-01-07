import 'package:flutter/material.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Contacto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(height: 10,),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese el nombre',
                border: OutlineInputBorder(),
              ),
              onChanged: (nuevoValor) {



              },
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese el telefono',
                border: OutlineInputBorder(),
              ),
              onChanged: (nuevoValor) {



              },
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese el correo',
                border: OutlineInputBorder(),
              ),
              onChanged: (nuevoValor) {



              },
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {


              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              child: const Text("GUARDAR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
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