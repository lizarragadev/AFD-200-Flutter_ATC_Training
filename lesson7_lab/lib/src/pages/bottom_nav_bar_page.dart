import 'package:flutter/material.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedPage = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  PreferredSizeWidget appBarCustom = AppBar(
    title: const Text("Inicio"),
    backgroundColor: Colors.orangeAccent,
  );

  modifyAppBar(color, titulo) {
    setState(() {
      appBarCustom = AppBar(
        title: Text(titulo),
        backgroundColor: color,
      );
    });
  }

  selectionTab(position) {
    switch(position) {
      case 0: modifyAppBar(Colors.orangeAccent, "Inicio");
      break;
      case 1: modifyAppBar(Colors.deepPurpleAccent, "Favoritos");
      break;
      case 2: modifyAppBar(Colors.green, "Listados");
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom,
      body: pages[selectedPage],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 5)
          ]
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          child: BottomNavigationBar(
            currentIndex: selectedPage,

            //type: BottomNavigationBarType.fixed,
            //backgroundColor: Colors.blue,
            //fixedColor: Colors.white,
            //unselectedItemColor: Colors.black45,

            //showSelectedLabels: false,
            //showUnselectedLabels: false,

            //type: BottomNavigationBarType.fixed,
            //backgroundColor: Colors.blue,
            //selectedItemColor: Colors.deepOrange,
            //unselectedItemColor: Colors.greenAccent,

            //backgroundColor: Colors.indigo,
            //type: BottomNavigationBarType.fixed,
            //selectedItemColor: Colors.deepOrangeAccent,
            //unselectedItemColor: Colors.deepPurpleAccent,

            items: itemsBNB(),
            onTap: (position) {
              setState(() {
                selectedPage = position;
                selectionTab(position);
              });
            },
          ),
        )
      )
    );
  }

  List<BottomNavigationBarItem> itemsBNB() {
      List<BottomNavigationBarItem> lista = [];
    lista.add(
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inicio"
        )
    );
    lista.add(
        const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favoritos"
        )
    );
    lista.add(
        const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Listados"
        )
    );
    return lista;
  }

}



class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.home, size: 150, color: Colors.orangeAccent,),
          SizedBox(height: 30,),
          Text("Inicio", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.star, size: 150, color: Colors.deepPurpleAccent,),
          SizedBox(height: 30,),
          Text("Favoritos", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.star, size: 150, color: Colors.green,),
          SizedBox(height: 30,),
          Text("Listados", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

