// import 'package:belajar_flutter/pages/pertemuan_4/lat_widget.dart';
// import 'package:belajar_flutter/pages/pertemuan_5/layout_1.dart';
// import 'package:belajar_flutter/pages/pertemuan_6/flex1.dart';
// import 'package:belajar_flutter/pages/pertemuan_6/flex2.dart';
// import 'package:belajar_flutter/pages/pertemuan_6/flex3.dart';
// import 'package:belajar_flutter/pages/pertemuan_6/flex4.dart';
import 'package:belajar_flutter/pages/pertemuan_6/kantin.app.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: KantinApp());
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
