import 'package:flutter/material.dart';
import 'package:lesson_9/src/utils/constants.dart';

void mostrarMensaje(context, mensaje, tipo) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 3),
    content: Text(mensaje),
    backgroundColor: (tipo == Constants.MENSAJE_EXITOSO) ? Colors.green : Colors.redAccent,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
    ),
    behavior: SnackBarBehavior.floating,
    elevation: 16.0,
    margin: const EdgeInsets.all(20),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showBarraProgreso(context, mensaje) {
  AlertDialog alert = AlertDialog(
    content: Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Row(
        children: [
          const CircularProgressIndicator(),
          const SizedBox(width: 25,),
          Flexible(child: Text("$mensaje..."))
        ],
      ),
    ),
  );
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return alert;
      }
  );
}