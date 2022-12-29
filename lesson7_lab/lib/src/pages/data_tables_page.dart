import 'package:flutter/material.dart';

class DataTablesPage extends StatelessWidget {
  DataTablesPage({Key? key}) : super(key: key);

  int numColumnas = 10;
  int numFilas = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Data Tables"),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            headingRowColor: MaterialStateColor.resolveWith((states) => Colors.green),
            dataRowColor: MaterialStateColor.resolveWith((states) => Colors.amber),
            columns: addHeaders(),
            rows: addRows(),
          ),
        )
      )
    );
  }

  List<DataColumn> addHeaders() {
    List<DataColumn> list = [];
    for(int i = 1; i<= numColumnas; i++) {
      list.add(DataColumn(label: Text("Columna $i")));
    }
    return list;
  }

  List<DataRow> addRows() {
    List<DataRow> list = [];
    for(int i = 1; i <= numFilas; i++) {
      List<DataCell> listaCelda = [];
      for(int j = 1; j <= numColumnas; j++) {
        listaCelda.add(DataCell(Text("Celda($i, $j)")));
      }
      list.add(DataRow(cells: listaCelda));
    }
    return list;
  }

}
