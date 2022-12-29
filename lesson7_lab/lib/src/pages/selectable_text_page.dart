import 'package:flutter/material.dart';

class SelectableTextPage extends StatefulWidget {
  const SelectableTextPage({Key? key}) : super(key: key);

  @override
  State<SelectableTextPage> createState() => _SelectableTextPageState();
}

class _SelectableTextPageState extends State<SelectableTextPage> {
  String texto = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";
  String selectedText = "";
  int posInicial = 0;
  int posFinal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selectable Text"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              texto,
              textAlign: TextAlign.justify,
              onSelectionChanged: (TextSelection text, cause) {
                setState(() {
                  posInicial = text.start;
                  posFinal = text.end;
                  selectedText = texto.substring(posInicial, posFinal);
                });
              },
            ),
            SizedBox(height: 20,),
            Text("Texto seleccionado: "),
            SizedBox(height: 20,),
            Text(selectedText)
          ],
        ),
      ),
    );
  }
}
