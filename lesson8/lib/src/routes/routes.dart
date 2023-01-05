
import 'package:flutter/cupertino.dart';
import 'package:lesson8/src/pages/bottom_sheet_page.dart';
import 'package:lesson8/src/pages/checkbox_radiobutton_page.dart';
import 'package:lesson8/src/pages/expansion_panel_page.dart';
import 'package:lesson8/src/pages/home_page.dart';
import 'package:lesson8/src/pages/pickers_dialog_page.dart';
import 'package:lesson8/src/pages/slider_switch_page.dart';
import 'package:lesson8/src/pages/text_fields_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (context) => HomePage(),
    '/textFields': (context) => const TextFieldsPage(),
    '/checkRadio': (context) => const CheckBoxRadioButtonPage(),
    '/pickers': (context) => const PickersDialogPage(),
    '/sliderSwitch': (context) => const SliderSwitchPage(),
    '/bottomSheet': (context) => BottomSheetPage(),
    '/expansionPanel': (context) => const ExpansionPanelPage(),
  };
}