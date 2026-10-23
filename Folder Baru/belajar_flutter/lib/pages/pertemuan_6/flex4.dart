import 'package:flutter/material.dart';

final List<Map<String, dynamic>> pegawai = [
  {"nama": "John Doe", "Kelas": "ASE-220001", "warna": Colors.blue},
  {"nama": "Mawar", "Kelas": "ASE-220002", "warna": Colors.pink},
  {"nama": "Melati", "Kelas": "ASE-220004", "warna": Colors.green},
];

class Flex4 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pegawai.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: pegawai[index]['warna'],
              ),
              child: Row(
                children: [
                  CircleAvatar(child: Icon(Icons.person)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Nama Lengkap : ${pegawai[index]['nama']} "),
                      Text("Kelas : ${pegawai[index]['Kelas']} "),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
