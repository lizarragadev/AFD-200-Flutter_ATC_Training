import 'package:flutter/material.dart';
import 'package:lesson6_lab/src/widgets/utils.dart';

class WebPage extends StatelessWidget {
  String url;
  WebPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: crearTitulo("Navegador"),
      ),
      body: webViewBase(url),
    );
  }
}
