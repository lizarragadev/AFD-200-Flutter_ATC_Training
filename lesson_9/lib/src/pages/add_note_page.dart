import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:lesson_9/src/model/note.dart';
import 'package:lesson_9/src/provider/auth_provider.dart';
import 'package:lesson_9/src/utils/constants.dart';
import 'package:lesson_9/src/utils/utils.dart';
import 'package:uuid/uuid.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({Key? key}) : super(key: key);

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  String titulo = "";
  String contenido = "";
  late AuthProvider provider;
  late User? user;

  @override
  Widget build(BuildContext context) {
    provider = AuthProvider(context: context);
    user = provider.getUser();

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
                setState(() {
                  titulo = nuevoValor;
                });
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
                validarForm();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
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

  void validarForm() {
    if (titulo.isNotEmpty && contenido.isNotEmpty) {
      guardarNota();
    } else {
      mostrarMensaje(context, "Existen campos vacíos", Constants.MENSAJE_ERROR);
    }
  }

  Future<void> guardarNota() async {
    try {
      showBarraProgreso(context, "Agregando nota");
      final fireDatabase = FirebaseDatabase.instance;
      var refRealTime = fireDatabase.ref().child("${Constants.NOTAS}/${generarUUID()}");
      await refRealTime.set(createNote().toMap());
      mostrarMensaje(context, "Se guardo la nota.", Constants.MENSAJE_EXITOSO);
      Navigator.pop(context);
      Navigator.pop(context);
    } catch (err) {
      mostrarMensaje(context, "Error: $err", Constants.MENSAJE_ERROR);
      Navigator.pop(context);
    }
  }

  Note createNote() {
    return Note(
      userId: user!.uid,
      titulo: titulo,
      contenido: contenido
    );
  }


  dynamic generarUUID() {
    return const Uuid().v4();
  }

}