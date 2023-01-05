import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class CheckBoxRadioButtonPage extends StatefulWidget {
  const CheckBoxRadioButtonPage({Key? key}) : super(key: key);

  @override
  State<CheckBoxRadioButtonPage> createState() => _CheckBoxRadioButtonPageState();
}

class _CheckBoxRadioButtonPageState extends State<CheckBoxRadioButtonPage> {
  final elemenCheckBox = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo",];
  List<String> checkSeleccionados = [];

  final elemenRadio = ["Femenino", "Masculino", "No Binario"];
  String radioSeleccionado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBoxes & RadioButtons"),),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Seleccione los dias disponibles"),
            CheckboxGroup(
              labels: elemenCheckBox,
              onSelected: (List<String> checked) {
                setState(() {
                  checkSeleccionados = checked;
                  print(checkSeleccionados);
                });
              },
            ),
            Text("Seleccione su género"),
            RadioButtonGroup(
              labels: elemenRadio,
              onSelected: (selected){
                setState(() {
                  radioSeleccionado = selected;
                  print(radioSeleccionado);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
