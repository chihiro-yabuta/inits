import 'package:flutter/material.dart';

import 'package:pj/home.dart';
import 'package:pj/map.dart';
import 'package:pj/result.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': home(),
        '/map': map(),
        '/result': result(),
      }
    );
  }
}