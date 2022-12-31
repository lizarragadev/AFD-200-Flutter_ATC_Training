
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PeopleProvider {
  List<dynamic> lista = [];

  Future<List<dynamic>> cargarDatos() async {
    final response = await rootBundle.loadString("data/people.json");
    Map dataMap = json.decode(response);
    lista = dataMap['people'];
    return lista;
  }
}

final peopleProvider = PeopleProvider();