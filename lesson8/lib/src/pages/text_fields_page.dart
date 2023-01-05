import 'dart:io';

import 'package:flutter/material.dart';

class TextFieldsPage extends StatefulWidget {
  const TextFieldsPage({Key? key}) : super(key: key);

  @override
  State<TextFieldsPage> createState() => _TextFieldsPageState();
}

class _TextFieldsPageState extends State<TextFieldsPage> {
  String valorTextField = "";

  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid) {
      // confiracion especifica para android
    } else {
      if(Platform.isIOS) {
        // configuracion especifica para iOS
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text("TextFields"),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text("TextField Normal"),
              TextField(
                autofocus: true,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 10,),

              Text("TextField tipo teclado"),
              TextField(
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10,),

              Text("Tamaño máximo y capitalización"),
              TextField(
                maxLength: 10,
                textCapitalization: TextCapitalization.characters,
              ),
              SizedBox(height: 10,),

              Text("Tipo password"),
              TextField(
                obscureText: true,
              ),
              const SizedBox(height: 10,),

              const Text("Decoracion"),
              SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Escriba su nombre",
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.redAccent)
                  )
                ),
              ),

              SizedBox(height: 20,),
              Text("Detectar cambios en TextField"),
              TextField(
                  decoration: InputDecoration(
                      hintText: "DETECTAR CAMBIOS",
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.redAccent)
                      )
                  ),
                onChanged: (value) {
                    setState(() {
                      valorTextField = value;
                      print(valorTextField);
                    });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

