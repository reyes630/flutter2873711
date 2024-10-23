
import 'package:flutter/material.dart';

void main(List<String> args) {
  //runApp(const MaterialApp())
}
class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Información Personal",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Información Personal"),
          backgroundColor: const Color(0xFF2196F3),
          foregroundColor: Colors.black,
        ), 
        body: Column(
          children: [
            ListTile(
              title:Text("Esteban Reyes Agudelo"),
              subtitle: Text("Nombre"),
              leading: Icon(Icons.accessibility_new_rounded)
            ),
            
          ],
        )
      )
    );
  } 
}