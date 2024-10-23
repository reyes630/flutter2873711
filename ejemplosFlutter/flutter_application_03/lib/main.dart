

import 'package:flutter/material.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle  estilos = 
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return  MaterialApp(
      title: "Widgets básicos Flutter",
      home: Column(
        children: [ 
          const Text("Lenguajes de programación"),
          const Icon(
            Icons.add_home_work_outlined,
            color: Colors.orange,
            size: 100.00,
          ),
          const Text("Dart"),
          const Text("Python"),
          const Text("Java"),
          const Text("C++"),
          const Text("php"),
          const Text("Ruby"),
          const Text("JavaScript"),
          const Text(".Net"),
          const Text("Rust"),
          ElevatedButton(
            onPressed: (){}, 
            child: const Text("Enviar"), 
            style: estilos,
            ),

          Container(
            child: Row(
              children: [
                //Imagen desde URL
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWREQilVjanL-L_YhpRB_AjD_m-n2Kv1ieTwS-hEFS757pQqgq5bmWD1uadY4uZ7aNS5g&usqp=CAU'),         
                
                //Imagen Local
                Image.network('./images/showerhomer.png')
              ],
            ),
          )
          
        ],
      ) 
    );
  }
}

