
import 'package:flutter/material.dart';
import 'package:lesson6_lab/src/pages/web_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

Widget crearTitulo(String titulo) {
  return Text(
    titulo,
    style: const TextStyle(fontWeight: FontWeight.bold),
  );
}

List<Widget> crearAcciones(context) {
  return [
    IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return WebPage(url: "https://twitter.com");
          })
        );
      },
      icon: const Icon(Icons.favorite),
    ),
    IconButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return WebPage(url: "https://www.facebook.com");
            })
        );
      },
      icon: const Icon(Icons.facebook),
    ),
  ];
}

Widget crearBotones(context) {
  return ButtonBar(
    children: [
      botonOvalado("Pizza Vegetariana", "vegetariana", context),
      botonOvalado("Pizza con Queso", "queso", context),
      botonOvalado("Pizza Carnivora", "carnivora", context),
    ],
  );
}

Widget botonOvalado(nombre, nombreRuta, context) {
  return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, nombreRuta);
      },
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        side: const BorderSide(
          color: Colors.deepOrangeAccent,
          width: 2.0
        )
      ),
      child: Text(
        nombre,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.deepOrangeAccent
        ),
      ),
  );
}

Widget crearContenido(imagen, descripcion) {
  return Center(
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Image(
            image: AssetImage(imagen),
            width: 400,
          ),
          SizedBox(height: 30,),
          Text(
            descripcion,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )
        ],
      ),
    ),
  );
}

Widget webViewBase(url) {
  return WebView(
    initialUrl: url,
    javascriptMode: JavascriptMode.unrestricted,
  );
}