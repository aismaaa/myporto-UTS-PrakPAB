import 'package:flutter/material.dart';

class WidgetBertingkatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Bertingkat")),

      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Colors.grey.shade300,
                offset: Offset(2, 4),
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // FOTO
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/60.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 20),

              // JUDUL
              Text(
                "Strawberry",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              // DESKRIPSI
              Text(
                "Hal-hal kecil kadang bisa bikin suasana jadi lebih manis.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),

              SizedBox(height: 15),

              // ICON
              Icon(Icons.favorite, color: Colors.pink, size: 35),
            ],
          ),
        ),
      ),
    );
  }
}
