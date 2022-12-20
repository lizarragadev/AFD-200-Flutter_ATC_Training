import 'package:flutter/material.dart';

class MisBotonesPage extends StatefulWidget {
  const MisBotonesPage({Key? key}) : super(key: key);

  @override
  State<MisBotonesPage> createState() => _MisBotonesPageState();
}

class _MisBotonesPageState extends State<MisBotonesPage> {
  var items = ["Bolivia", "Argentina", "Brasil", "Colombia"];
  var valorSeleccionado = "Bolivia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _miAppBar(),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.star),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }

  PreferredSizeWidget _miAppBar() {
    return AppBar(
      title: Text("Botones"),
      actions: [
        IconButton(
            onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Click en Email")));},
            icon: Icon(Icons.email)),
        IconButton(
            onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Click en Eliminar")));},
            icon: Icon(Icons.delete)),
        IconButton(
            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Click en check")));},
            icon: Icon(Icons.check)),
        PopupMenuButton(itemBuilder: (BuildContext ctx)=>[
          PopupMenuItem(child: Text("Opcion 1"), value: '1'),
          PopupMenuItem(child: Text("Opcion 2"), value: '2'),
          PopupMenuItem(child: Text("Opcion 3"), value: '3'),
        ],
        onSelected: (selectedValue) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Click en $selectedValue")));
        },)
      ],
    );
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button")
          ),
          SizedBox(height: 15.0),
          ElevatedButton(
              onPressed: null,
              child: Text("Elevated Button deshabilitado")
          ),
          SizedBox(height: 15.0),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.people)
          ),
          SizedBox(height: 15.0),
          TextButton(
              onPressed: () {},
              child: Text("Boton sin fondo")
          ),
          SizedBox(height: 15.0),
          OutlinedButton(
              onPressed: (){},
              child: Text("Boton Outline"),
          ),
          SizedBox(height: 15.0),
          ButtonBar(
            children: [
              OutlinedButton(
                  onPressed: (){},
                  child: Text("Boton 1"),
                  style: OutlinedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(
                          width: 2.0,
                          color: Colors.deepOrange
                      )
                  )
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("Boton 1"),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(
                    width: 2.0,
                    color: Colors.deepOrange
                  )
                ),
              ),
            ],
          ),
          DropdownButton(
            value: valorSeleccionado,
            items: items.map((value){
              return DropdownMenuItem(
                value: value,
                child: Row(
                  children: [
                    Icon(Icons.settings, size: 15,),
                    Text(value)
                  ],
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                valorSeleccionado = value.toString();
              });
            },
            onTap: () {},
          )
        ],
      ),
    );
  }
}
