
import 'package:flutter/material.dart';

class WidgetsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        const SizedBox(height: 20,),
        const Text("Primer texto", style: TextStyle(
          fontSize: 25, color: Colors.blue,
          fontFamily: "Rubik"
        ),),
        const SizedBox(height: 20,),
        const Text("Segundo texto", style: TextStyle(
          fontSize: 20, color: Colors.green,
        ),),
        const SizedBox(height: 20,),
        const Image(
          image: AssetImage("images/meal.jpeg"), width: 100.0,),
        const SizedBox(height: 20,),
        Image(
            image: NetworkImage("https://cdn.vectorstock.com/i/1000x1000/97/81/hand-touching-blank-screen-smartphone-vector-32169781.webp"), width: 150,
        ),
        const SizedBox(height: 20,),
        _cardPersonalizado(),
        const SizedBox(height: 20,),
        Icon(Icons.ac_unit),
        const SizedBox(height: 20,),
        Icon(Icons.abc_sharp),
        const SizedBox(height: 20,),
        Icon(Icons.vaccines),
      ],
    );
  }

  Widget _cardPersonalizado() {
    return Card(
      elevation: 10,
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: const [
            Image(image: AssetImage("images/meal.jpeg"), width: 100.0,),
            SizedBox(width: 10,),
            Text("Titulo de Card", style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
    );
  }

}