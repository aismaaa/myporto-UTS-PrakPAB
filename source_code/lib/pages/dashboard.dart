import 'package:flutter/material.dart';
import 'counter.dart';
import 'widget_bertingkat.dart';
import 'user_input.dart';
import 'dynamic_list.dart';
import 'navigasi.dart';
import 'grid_view.dart';
import 'tentang_saya.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = -1;

  final List<String> menu = [
    "Counter",
    "Widget Bertingkat",
    "User Input Example",
    "Dynamic List Example",
    "Navigasi Sederhana",
    "Grid View",
    "Tentang Saya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyPorto")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Cek hasil karyaku disini:", style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: menu.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedIndex == index
                            ? const Color.fromARGB(255, 169, 59, 96)
                            : Colors.grey[300],
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CounterPage(),
                            ),
                          );
                        }
                        if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WidgetBertingkatPage(),
                            ),
                          );
                        }
                        if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserInputPage(),
                            ),
                          );
                        }
                        if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DynamicListPage(),
                            ),
                          );
                        }
                        if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavigasiPage(),
                            ),
                          );
                        }
                        if (index == 5) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GridViewPage(),
                            ),
                          );
                        }
                        if (index == 6) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TentangSayaPage(),
                            ),
                          );
                        }
                      },
                      child: Text(menu[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
