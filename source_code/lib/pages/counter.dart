import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int angka = 0;

  void tambah() {
    setState(() {
      angka++;
    });
  }

  void kurang() {
    setState(() {
      angka--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nilai Counter:",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),

          Text(
            "$angka",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: kurang,
                child: Text("-"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: tambah,
                child: Text("+"),
              ),
            ],
          )
        ],
      ),
    );
  }
}