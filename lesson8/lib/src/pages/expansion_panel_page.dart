import 'package:flutter/material.dart';

class ExpansionPanelPage extends StatefulWidget {
  const ExpansionPanelPage({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelPage> createState() => _ExpansionPanelPageState();
}

class Item {
  String title;
  String description;
  bool isExpanded;
  Item({
    required this.title,
    required this.description,
    this.isExpanded = false
  });
}

class _ExpansionPanelPageState extends State<ExpansionPanelPage> {
  final List<Item> data = List<Item>.generate(15, (index) {
    return Item(
      title: "Elemento número ${index + 1}",
      description: "Esta es una descripcion que ira en la parte expandida de nuestro Item en una lista"
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Panel & Snackbar"),),
      body: creaListaExpandible(),
    );
  }

  Widget creaListaExpandible() {
    return ListView(
      children: [
        ExpansionPanelList(
          children: data.map((item) {
            return ExpansionPanel(
              isExpanded: item.isExpanded,
              headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text(item.title),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(mySnackbar("Red celular inestable"));
                    },
                  );
                },
                body: Column(
                  children: [
                    ListTile(
                      title: Text(item.description),
                      subtitle: Text("Este es un subtitulo"),
                      trailing: Icon(Icons.delete),
                      onTap: () {
                        setState(() {
                          data.removeWhere((element) => item == element);
                        });
                      },
                    )
                  ],
                ),

            );
          }).toList(),
          expansionCallback: (index, isExpanded) {
            setState(() {
              data[index].isExpanded = !isExpanded;
            });
          },
        )
      ],
    );
  }



  // ScaffoldMessenger.of(context).showSnackBar(mySnackbar("Red celular inestable"));
  var mySnackbar = (mensaje) {
    return SnackBar(
        content: Row(
          children: [
            Icon(Icons.warning, color: Colors.white,),
            SizedBox(width: 15,),
            Text(mensaje)
          ],
        ),
      backgroundColor: Colors.green,
      action: SnackBarAction(
        label: "Deshacer",
        textColor: Colors.redAccent,
        onPressed: () {},
      ),
      duration: Duration(seconds: 5),
    );
  };

}

