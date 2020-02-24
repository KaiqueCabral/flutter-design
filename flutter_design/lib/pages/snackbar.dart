import 'package:flutter/material.dart';

void main() => runApp(SnackBarPage());

class SnackBarPage extends StatelessWidget {
  static const String routeName = "/snack-bar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: SnackBarContainer(),
    );
  }
}

///You need to split the Scaffold Widget and the Scaffold Children
class SnackBarContainer extends StatefulWidget {
  @override
  _SnackBarContainerState createState() => _SnackBarContainerState();
}

class _SnackBarContainerState extends State<SnackBarContainer> {
  String _textSnackBar = "Snackbar Text";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _textSnackBar = "";
                  });

                  final snackBar = SnackBar(
                    backgroundColor: Colors.green[100],
                    content: Text(
                      "Success!",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        setState(() {
                          _textSnackBar = "Snackbar Text";
                        });
                      },
                    ),
                  );

                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text("Clear"),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepPurple[100],
                  child: Text(_textSnackBar),
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
