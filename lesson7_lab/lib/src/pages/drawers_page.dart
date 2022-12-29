import 'package:flutter/material.dart';

class DrawersPage extends StatefulWidget {
  const DrawersPage({Key? key}) : super(key: key);

  @override
  State<DrawersPage> createState() => _DrawersPageState();
}

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class _DrawersPageState extends State<DrawersPage> {
  int selectedPage = 0;
  final drawerItems = [
    DrawerItem("Inicio", Icons.home),
    DrawerItem("Favoritos", Icons.star),
    DrawerItem("Imagenes", Icons.image),
    DrawerItem("Perfil", Icons.person)
  ];
  
  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for(var i = 0; i < drawerItems.length; i++) {
      drawerOptions.add(
        ListTile(
          title: Text(drawerItems[i].title),
          leading: Icon(drawerItems[i].icon),
          onTap: () => onSelectedItem(i),
          selected: i == selectedPage,
        )
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(drawerItems[selectedPage].title),),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Gustavo Lizárraga"),
              accountEmail: Text("lizarraga.dev@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundImage: const Image(
                      image: AssetImage("images/profile1.png"),
                    ).image,
                  ),
                ),
                onTap: () { print("Hizo click en la foto de perfil");},
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: Image(image: AssetImage("images/profile1.png")).image,
                ),
                CircleAvatar(
                  backgroundImage: Image(image: AssetImage("images/profile.png")).image,
                )
              ],
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.greenAccent, Colors.green, Colors.green.shade900
                  ]
                )
              ),
            ),
            Column(
              children: drawerOptions,
            )
          ]
        ),
      ),
      body: getDrawerItemWidget(selectedPage),
    );
  }

  Widget getDrawerItemWidget(position) {
    switch(position) {
      case 0: return Page1();
      case 1: return Page2();
      case 2: return Page3();
      case 3: return Page4();
      default: return Text("Error en seleccion");
    }
  }

  void onSelectedItem(index) {
    setState(() {
      selectedPage = index;
      Navigator.of(context).pop();
    });
  }

}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pagina 1"),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pagina 2"),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pagina 3"),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pagina 4"),
    );
  }
}
