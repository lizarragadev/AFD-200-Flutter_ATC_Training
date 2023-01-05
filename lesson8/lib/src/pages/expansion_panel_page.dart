import 'package:flutter/material.dart';

class ExpansionPanelPage extends StatefulWidget {
  const ExpansionPanelPage({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelPage> createState() => _ExpansionPanelPageState();
}

class _ExpansionPanelPageState extends State<ExpansionPanelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Panel & Snackbar"),),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(mySnackbar("Red celular inestable"));
              },
              child: Text("Abrir Snackbar")
          ),
        ),
      ),
    );
  }

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

