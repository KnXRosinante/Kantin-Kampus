import 'package:flutter/material.dart';

class LatWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Aplikasi Flutter'),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Ini aplikasi flutter pertama saya',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.blue,
            ),
          ),
          Text('ini teks no 2'),
          SizedBox(height: 20),
          Text('ini teks no 3'),
          Text('ini teks no 4'),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight,
                colors: [
                  Colors.deepOrangeAccent.shade400,
                  Colors.blue.shade700,
                ],
              ),
              // border: BoxBorder.all(color: Colors.blue),
              boxShadow: [
                BoxShadow(spreadRadius: 0.9, color: Colors.grey.shade600),
              ],
            ),

            child: Icon(Icons.qr_code_2, size: 100, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
