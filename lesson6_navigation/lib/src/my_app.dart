
import 'package:flutter/material.dart';
import 'package:lesson6_navigation/src/pages/dos_page.dart';
import 'package:lesson6_navigation/src/pages/menu_page.dart';
import 'package:lesson6_navigation/src/pages/tres_page.dart';
import 'package:lesson6_navigation/src/pages/uno_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MenuPage(),
      routes: {
        '1': (context) => const UnoPage(),
        '2': (context) => const DosPage(),
        '3': (context) => const TresPage()
      },
    );
  }
}
