import 'package:flutter/material.dart';

class DynamicListPage extends StatelessWidget {
  final List<String> data = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.star),
            title: Text(data[index]),
          );
        },
      ),
    );
  }
}