import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grids",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Trabajo con Grids"),
          backgroundColor: const Color.fromARGB(255, 255, 108, 79),
          foregroundColor: Colors.white,
        ),
        body: Container(
          color: const Color.fromARGB(255, 255, 198, 113),
          child: GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 4, //Cantidad de elemntos por filas 
            children: const [
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta N° 1"),
                    Text("AQUI ESTOY"),
                    Text("Tarjeta regalo "),
                    Icon(Icons.add_a_photo)
                    
                  ],
                ),
              ),
              Card(
                child: Text("Tarjeta N° 2"),
              ),
              Card(
                child: Text("Tarjeta N° 3"),
              ),
              Card(
                child: Text("Tarjeta N° 4"),
              ),
              Card(
                child: Text("Tarjeta N° 5"),
              ),
              Card(
                child: Text("Tarjeta N° 6"),
              ),
              Card(
                child: Text("Tarjeta N° 7"),
              ),
              Card(
                child: Text("Tarjeta N° 8"),
              ),
              Card(
                child: Text("Tarjeta N° 9"),
              ),
              Card(
                child: Text("Tarjeta N° 10"),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}