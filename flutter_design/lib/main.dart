import 'package:flutter/material.dart';
import 'package:flutter_design/home.dart';
import 'package:flutter_design/pages/snackbar.dart';

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
        SnackBarPage.routeName: (BuildContext context) => SnackBarPage(),
      },
    );
  }
}
