import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:lesson8_lab/src/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int CHECK_IN = 1;
  final int CHECK_OUT = 2;
  DateTime dateCheckIn = DateTime.now();
  DateTime dateCheckOut = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lab 8 | Hotel"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              crearCardImagen(),
              crearCheckInCheckOut("Fecha Check-in", dateCheckIn, CHECK_IN),
              crearCheckInCheckOut("Fecha Check-out", dateCheckOut, CHECK_OUT),
              crearSliderAdultos(),
              crearSliderNinios(),
              Text("Extras", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 17)),
              crearCheckboxesExtras(),
              Text("Vistas", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 17)),
              crearRadioVistas(),
              SizedBox(height: 30,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent
                ),
                  onPressed: () {
                    Navigator.pushNamed(context, RoutePaths.roomsPage);
                  },
                  child: Text("Ver Habitaciones",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17))
              )
            ],
          ),
        )
    );
  }

  Widget crearCardImagen() {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      elevation: 6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: const Image(
          image: AssetImage("images/header.png"),
        ),
      ),
    );
  }

  Widget crearCheckInCheckOut(titulo, date, tipo) {
    return Row(
      children: [
        Text(titulo, style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 17),),
        SizedBox(width: 10,),
        Text("${date.year}/${date.month}/${date.day}", style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold, fontSize: 17),),
        IconButton(
            onPressed: () {
              selectedDate(context, tipo);
            },
            icon: Icon(Icons.date_range, color: Colors.deepOrange,)
        )
      ],
    );
  }

  Future<void> selectedDate(context, tipo) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: (tipo == CHECK_IN) ? dateCheckIn : dateCheckOut,
        firstDate: DateTime(2023),
        lastDate: DateTime(2024)
    );
    if(picked != null && picked != dateCheckIn && picked != dateCheckOut) {
      setState(() {
        if(tipo == CHECK_IN) {
          dateCheckIn = picked;
        } else {
          dateCheckOut = picked;
        }
      });
    }
  }

  int numeroDeAdultos = 0;
  int numeroDeNinos = 0;

  Widget crearSliderAdultos() {
    return Row(
      children: [
        Text("Adultos $numeroDeAdultos", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 17),),
        Expanded(
            child: Slider(
              value: numeroDeAdultos.toDouble(),
              min: 0,
              max: 6,
              divisions: 6,
              label: "$numeroDeAdultos adultos",
              onChanged: (nuevoValor) {
                setState(() {
                  numeroDeAdultos = nuevoValor.toInt();
                });
              },
            )
        )
      ],
    );
  }

  Widget crearSliderNinios() {
    return Row(
      children: [
        Text("Niños $numeroDeNinos", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 17),),
        Expanded(
            child: Slider(
              value: numeroDeNinos.toDouble(),
              min: 0,
              max: 6,
              divisions: 6,
              label: "$numeroDeNinos niños",
              onChanged: (nuevoValor) {
                setState(() {
                  numeroDeNinos = nuevoValor.toInt();
                });
              },
            )
        )
      ],
    );
  }

  Widget crearCheckboxesExtras() {
    return CheckboxGroup(
        labels: const [
          "Desayuno (50 Bs/dia)",
          "Internet WiFi (30 Bs/dia)",
          "Parqueo (25 Bs/dia)",
          "Piscina (50 Bs/dia)",
        ],
      onSelected: (List<String> list) {
          print(list);
      },
    );
  }

  Widget crearRadioVistas() {
    return RadioButtonGroup(
        labels: const [
          "Vista al mar",
          "Vista a la piscina",
          "Vista a la ciudad"
        ],
      onSelected: (selected) {
          print(selected);
      },
    );
  }

}


