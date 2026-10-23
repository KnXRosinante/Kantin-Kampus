import 'package:flutter/material.dart';

class Flex3 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(width: 300, height: 100, color: Colors.blue),
        Container(width: 300, height: 100, color: Colors.amber),
        Container(width: 300, height: 100, color: Colors.yellow),
        Container(width: 300, height: 100, color: Colors.red),
      ],
    );
  }
}
