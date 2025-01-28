import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/flutter_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     
      home:  FlutterAnimation1(),
    );
  }
}
