import 'package:flutter/material.dart';
import 'package:flutter_design/home.dart';
import 'package:flutter_design/pages/fonts.dart';
import 'package:flutter_design/pages/orientation.dart';
import 'package:flutter_design/pages/snackbar.dart';
import 'package:flutter_design/pages/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Design - Cookbook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        FontsPage.routeName: (BuildContext context) => FontsPage(),
        OrientationPage.routeName: (BuildContext context) => OrientationPage(),
        SnackBarPage.routeName: (BuildContext context) => SnackBarPage(),
        TabsPage.routeName: (BuildContext context) => TabsPage(),
      },
    );
  }
}
