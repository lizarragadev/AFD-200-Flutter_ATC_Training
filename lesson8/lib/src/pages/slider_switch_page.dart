import 'package:flutter/material.dart';

class SliderSwitchPage extends StatefulWidget {
  const SliderSwitchPage({Key? key}) : super(key: key);

  @override
  State<SliderSwitchPage> createState() => _SliderSwitchPageState();
}

class _SliderSwitchPageState extends State<SliderSwitchPage> {
  double valorSlider = 50.0;
  bool bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider & Switch"),),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Text("Cambia tamaño de imagen"),
          crearSlider(),
          crearSwitch(),
          Expanded(
              child: crearImagen()
          )
        ],
      ),
    );
  }

  Widget crearSlider() {
    return Slider(
        value: valorSlider,
        label: "Tamaño imagen",
        min: 1.0,
        max: 100.0,
        divisions: 20,
        onChanged: (bloquearCheck) ? null : (valor) {
          setState(() {
            valorSlider = valor;
          });
        }
    );
  }

  Widget crearSwitch(){
    return SwitchListTile(
        value: bloquearCheck,
        title: Text("Bloquear slider"),
        onChanged: (valor) {
          setState(() {
            bloquearCheck = valor;
          });
        }
    );
  }

  Widget crearImagen() {
    return Image(
      image: AssetImage("images/profile.png"),
      fit: BoxFit.contain,
      width: valorSlider * 3,
    );
  }
}

