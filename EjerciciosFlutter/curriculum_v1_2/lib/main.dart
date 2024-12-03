import 'package:curriculum_v1_2/menu.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Curriculum ERA",
      home: Menu()
    );
  }
}
