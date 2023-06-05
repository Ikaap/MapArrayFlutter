import 'package:belajar_list_view/students.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Student> students = [
    Student(id: 'ss1', nama: 'ika', umur: 19, tanggal: DateTime.now()),
    Student(id: 'ss2', nama: 'pur', umur: 12, tanggal: DateTime.now()),
    Student(id: 'ss3', nama: 'wanti', umur: 10, tanggal: DateTime.now()),
    Student(id: 'ss4', nama: 'padi', umur: 12, tanggal: DateTime.now()),
    Student(id: 'ss5', nama: 'rifqi', umur: 11, tanggal: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              color: Colors.yellow,
              child: ListView(
                scrollDirection: Axis.horizontal, // untuk posisi scrollnya
                padding: const EdgeInsets.all(16),
                children: students.map((ss) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8), // untuk jarak antar konten (kotak)
                    child: FillImageCard(
                      color: Colors.grey,
                      width: 200,
                      heightImage: 140,
                      imageProvider: const AssetImage('assets/img/ic_logo.png'),
                      tags: [Text(ss.id), Text(ss.umur.toString())],
                      title: Text(ss.nama),
                      description: Text(ss.tanggal.toString()),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              color: Colors.yellow,
              child: ListView(
                scrollDirection: Axis.horizontal, // untuk posisi scrollnya
                padding: const EdgeInsets.all(16),
                children: students.map((ss) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: FillImageCard(
                      color: Colors.grey,
                      width: 200,
                      heightImage: 140,
                      imageProvider: const AssetImage('assets/img/ic_logo.png'),
                      tags: [Text(ss.id), Text(ss.umur.toString())],
                      title: Text(ss.nama),
                      description: Text(ss.tanggal.toString()),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
