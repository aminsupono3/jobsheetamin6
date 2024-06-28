import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hallo Dunia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MahasiswaList(),
    );
  }
}

class MahasiswaList extends StatefulWidget {
  @override
  _MahasiswaListState createState() => _MahasiswaListState();
}

class _MahasiswaListState extends State<MahasiswaList> {
  List<Map<String, dynamic>> _mahasiswa = [
    {'nama': 'AMIN SUPONO', 'warna': Color.fromARGB(255, 51, 7, 122)},
    {'nama': 'RAHMAN RAMADANI', 'warna': Colors.orange},
    {'nama': 'DESTA MUTIARA', 'warna': Colors.red},
    {'nama': 'YUSUF JAUHAR ALIF', 'warna': Colors.green},
    {'nama': 'RANDI PANGESTU', 'warna': Colors.pink},
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apa Kabar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: _mahasiswa[_currentIndex]['nama'],
                style: TextStyle(
                    fontSize: 24,
                    color: _mahasiswa[_currentIndex]['warna'].withOpacity(0.8)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _currentIndex = (_currentIndex + 1) % _mahasiswa.length;
                });
              },
              child: Text('lanjut'),
            ),
          ],
        ),
      ),
    );
  }
}
