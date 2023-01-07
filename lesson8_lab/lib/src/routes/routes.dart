import 'package:flutter/material.dart';
import 'package:lesson8_lab/src/pages/home_page.dart';
import 'package:lesson8_lab/src/pages/room_page.dart';

class RoutePaths {
  static const homePage = "home";
  static const roomsPage = "rooms";
}

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case RoutePaths.homePage: return MaterialPageRoute(builder: (context) => HomePage());
      default: return MaterialPageRoute(builder: (context) => RoomPage());
    }
  }
}

