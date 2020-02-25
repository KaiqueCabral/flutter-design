import 'package:flutter/material.dart';

class OrientationPage extends StatelessWidget {
  static const String routeName = "/orientation";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation"),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(
              20,
              (index) => Container(
                color: Colors.teal[100],
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Item ${index + 1}",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
