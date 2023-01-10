import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lesson_9/src/provider/auth_provider.dart';
import 'package:lesson_9/src/routes/routes.dart';

class MyApp extends StatelessWidget {

  late AuthProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = AuthProvider(context: context);

    return MaterialApp(
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: getRoute(),
      debugShowCheckedModeBanner: false,
    );
  }

  String getRoute() {
    User? usuario = provider.getUser();
    if(usuario != null) {
      return RoutePaths.homePage;
    } else {
      return RoutePaths.loginPage;
    }
  }
}