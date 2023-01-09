
import 'package:flutter/material.dart';
import 'package:lesson_9/src/model/note.dart';
import 'package:lesson_9/src/routes/routes.dart';
import 'package:lesson_9/src/utils/constants.dart';
import 'package:lesson_9/src/utils/utils.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(34, 179, 164, 1.0),
        onPressed: () {
          Navigator.pushNamed(context, RoutePaths.addNotePage);
        },
        child: const Icon(Icons.add,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text("")
      ),
    );
  }

  /*Note convertDataToObject(DataSnapshot snapshot) {
    var dataObtenido = snapshot.value as Map<dynamic, dynamic>;
    dataObtenido.addAll({ 'id': snapshot.key });
    return Note.fromJson(dataObtenido);
  }*/

  void deleteNote(Note note) async {
    showBarraProgreso(context, "Eliminando mensaje...");
    //await fireDatabase.ref().child(Constants.NOTAS).child(note.id!).remove();
    Navigator.pop(context);
    mostrarMensaje(context, "Nota eliminada", Constants.MENSAJE_EXITOSO);
  }
}