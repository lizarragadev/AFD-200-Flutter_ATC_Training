import 'package:flutter/material.dart';
import 'package:lesson_9/src/routes/routes.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: getRoute(),
      debugShowCheckedModeBanner: false,
    );
  }

  static String getRoute() {
    return RoutePaths.loginPage;
  }
}