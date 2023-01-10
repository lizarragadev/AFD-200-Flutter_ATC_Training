import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider {
  BuildContext context;
  AuthProvider({required this.context});

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<dynamic> loginUsuario(correo, contrasenia) async {
    try {
      final loginUser = await auth.signInWithEmailAndPassword(email: correo, password: contrasenia);
      return loginUser;
    } on FirebaseAuthException catch(err) {
      return err.code;
    }
  }

  Future<dynamic> registrarUsuario(correo, contrasenia) async {
    try {
      final newUSer = await auth.createUserWithEmailAndPassword(email: correo, password: contrasenia);
      return newUSer;
    } on FirebaseAuthException catch(err) {
      return err.code;
    }
  }

  User? getUser() {
    return auth.currentUser;
  }

  Future<void> logOut() async {
    await auth.signOut();
  }

}