import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  BottomSheetPage({Key? key}) : super(key: key);

  final key1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheets"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  showModalBS(context);
                },
                child: Text("Abrir Bottom Modal Sheet")
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  showPersistentBS();
                },
                child: Text("Abrir Persistent Bottom Sheet")
            ),
          ],
        ),
      ),
    );
  }

  void showModalBS(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 600,
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("Bottom Sheet Modal", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Image(image: AssetImage("images/profile.png"), width: 150,),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cerrar"))
                ],
              ),
            ),
          );
        }
    );
  }
  
  void showPersistentBS() {
    key1.currentState?.showBottomSheet((context) {
      return Container(
        height: 400,
        color: Colors.amberAccent,
        alignment: Alignment.topCenter,
        child:Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Bottom Sheet Persistent", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Image(image: AssetImage("images/profile.png"), width: 150,),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cerrar"))
            ],
          ),
        ),
      );
    }) ;
  }

}
