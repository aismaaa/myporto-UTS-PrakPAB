import 'package:flutter/material.dart';

class TentangSayaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tentang Saya")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FOTO PROFIL (dibikin bulat lagi biar cakep 😏)
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),

            SizedBox(height: 20),

            // NPM
            Text(
              "NPM: 20241320001",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            SizedBox(height: 8),

            // NAMA
            Text(
              "Aisma Haidy Putri Berry Ani Nur Rizeki",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            // DESKRIPSI (versi lebih bagus 😏)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Saya merupakan mahasiswa Program Studi Sistem Informasi yang memiliki minat dalam pengembangan aplikasi mobile dan teknologi digital. Saat ini saya sedang mempelajari Flutter untuk membangun aplikasi yang interaktif, menarik, dan bermanfaat.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
