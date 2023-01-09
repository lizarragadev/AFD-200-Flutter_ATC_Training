
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text("Bienvenido: \n USER EMAIL",
        style: const TextStyle(fontSize: 20), textAlign: TextAlign.center,),
    );
  }
}