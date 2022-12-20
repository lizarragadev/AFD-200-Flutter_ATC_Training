import 'package:flutter/material.dart';
import 'package:lesson6_navigation/src/pages/dos_page.dart';

class UnoPage extends StatelessWidget {
  const UnoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Uno"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DosPage();
                  }));
                },
                child: Text("Ir a pagina 2")
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
