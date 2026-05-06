import 'package:flutter/material.dart';

class NavigasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigasi Sederhana"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Pindah Halaman"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HalamanKedua(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Kedua"),
      ),
      body: Center(
        child: Text("Ini halaman kedua"),
      ),
    );
  }
}