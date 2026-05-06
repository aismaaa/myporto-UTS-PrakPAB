import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final List<String> items = [
    "A", "B", "C", "D", "E", "F"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 kolom
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.pink[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                items[index],
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}