import 'package:flutter/material.dart';

class UserInputPage extends StatefulWidget {
  @override
  _UserInputPageState createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  TextEditingController controller = TextEditingController();
  String hasil = "";

  void tampilkanText() {
    setState(() {
      hasil = controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Masukkan sesuatu",
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: tampilkanText,
              child: Text("Tampilkan"),
            ),

            SizedBox(height: 20),

            Text(
              "Hasil: $hasil",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}