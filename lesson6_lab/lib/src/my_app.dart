import 'package:flutter/material.dart';
import 'package:lesson6_lab/src/pages/carnivora_page.dart';
import 'package:lesson6_lab/src/pages/home_page.dart';
import 'package:lesson6_lab/src/pages/queso_page.dart';
import 'package:lesson6_lab/src/pages/vegetariana_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        'vegetariana': (context) => VegetarianaPage(),
        'carnivora': (context) => CarnivoraPage(),
        'queso': (context) => QuesoPage(),
      },
    );
  }
}
