import 'package:flutter/material.dart';

class FontsPage extends StatelessWidget {
  static const String routeName = "/fonts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fonts"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          _textFont(
            "Using the TradeWinds font.\nImport the font from GoogleFonts.",
            "TradeWinds",
          ),
          _textFont(
            "Using the Raleway font.\nImport the font from GoogleFonts.",
            "Raleway",
          ),
          _textFontStyle(
            "Using the Raleway font on italic style.\nImport the font from GoogleFonts.",
            "Raleway",
            FontStyle.italic,
          ),
          _textFont(
            "Using the Verdana font.\nNo needs to import.",
            "Verdana",
          ),
        ],
      ),
    );
  }

  _textFont(text, font) => _textFontStyle(text, font, null);

  _textFontStyle(text, font, fontStyle) => Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: font,
            fontSize: 18,
            fontStyle: fontStyle,
          ),
        ),
      );
}
