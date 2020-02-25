import 'package:flutter/material.dart';
import 'package:flutter_design/pages/fonts.dart';
import 'package:flutter_design/pages/orientation.dart';
import 'package:flutter_design/pages/snackbar.dart';
import 'package:flutter_design/pages/tabs.dart';

Drawer getDrawer(BuildContext context) {
  return Drawer(
    elevation: 8,
    semanticLabel: "Menu",
    child: ListView(
      children: _drawerItems(context),
    ),
  );
}

List<Widget> _drawerItems(BuildContext context) {
  ListTile _item(
          String _text, IconData _icon, Color _color, String _routeName) =>
      ListTile(
        title: Text(_text),
        leading: Icon(
          _icon,
          color: _color,
        ),
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(_routeName);
        },
      );

  List<Widget> navItems = [
    _drawerHeader(),
    _item(
      "Snackbar",
      Icons.message,
      Colors.green[400],
      SnackBarPage.routeName,
    ),
    _item(
      "Fonts",
      Icons.font_download,
      Colors.grey[800],
      FontsPage.routeName,
    ),
    _item(
      "Orientation",
      Icons.screen_rotation,
      Colors.teal[800],
      OrientationPage.routeName,
    ),
    _item(
      "Tabs",
      Icons.tab,
      Colors.indigo[800],
      TabsPage.routeName,
    ),
    // _item(
    //   "Fonts",
    //   Icons.font_download,
    //   Colors.grey[900],
    //   SnackbarPage.routeName,
    // ),
  ];

  return navItems;
}

DrawerHeader _drawerHeader() {
  return DrawerHeader(
    child: Text("Hi!"),
    curve: Curves.easeInBack,
    duration: Duration(seconds: 1),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.blue[100],
    ),
  );
}
