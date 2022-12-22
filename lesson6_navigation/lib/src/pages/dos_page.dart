import 'package:flutter/material.dart';
import 'package:lesson6_navigation/src/pages/tres_page.dart';

class DosPage extends StatelessWidget {
  const DosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Dos"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, "3");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TresPage(valor: "Dato enviado")));
                },
                child: Text("Ir a pagina 3")
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Volver")
            )
          ],
        ),
      ),
    );
  }
}
