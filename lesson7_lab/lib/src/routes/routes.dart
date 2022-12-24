
import 'package:flutter/cupertino.dart';
import 'package:lesson7_lab/src/pages/bottom_nav_bar_page.dart';
import 'package:lesson7_lab/src/pages/data_tables_page.dart';
import 'package:lesson7_lab/src/pages/drawers_page.dart';
import 'package:lesson7_lab/src/pages/home_page.dart';
import 'package:lesson7_lab/src/pages/listview_listtiles_page.dart';
import 'package:lesson7_lab/src/pages/selectable_text_page.dart';
import 'package:lesson7_lab/src/pages/stacks_page.dart';
import 'package:lesson7_lab/src/pages/tab_bars_page.dart';

Map<String, WidgetBuilder> getAppicationRoute() {
  return {
    '/': (context) => HomePage(),
    '/bottomNav': (context) => BottomNavBarPage(),
    '/tabs': (context) => TabBarsPage(),
    '/drawers': (context) => DrawersPage(),
    '/listview': (context) => ListViewListTilesPage(),
    '/dataTable': (context) => DataTablesPage(),
    '/selectableText': (context) => SelectableTextPage(),
    '/stack': (context) => StacksPage()
  };
}
