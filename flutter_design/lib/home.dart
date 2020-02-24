import 'package:flutter/material.dart';
import 'package:flutter_design/drawer/drawer.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Design"),
      ),
      body: Center(
        child: Text("Home"),
      ),
      drawer: getDrawer(context),
    );
  }
}
