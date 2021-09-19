// ignore_for_file: prefer_const_constructors

import 'package:fashion_app_c4/pages/home_page_c4.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Countrol4Offical",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
