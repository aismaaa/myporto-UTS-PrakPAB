import 'package:flutter/material.dart';

class WidgetBertingkatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Bertingkat"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.pink[100],
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.pink[300],
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.pink[500],
              child: Text(
                "Ini Widget Bertingkat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}