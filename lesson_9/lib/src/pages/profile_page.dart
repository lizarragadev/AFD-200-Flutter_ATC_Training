
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lesson_9/src/provider/auth_provider.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  late AuthProvider provider;
  late User? user;

  @override
  Widget build(BuildContext context) {
    provider = AuthProvider(context: context);
    user = provider.getUser();

    return Center(
      child: Text("Bienvenido: \n ${user?.email}",
        style: const TextStyle(fontSize: 20), textAlign: TextAlign.center,),
    );
  }
}