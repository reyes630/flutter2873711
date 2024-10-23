import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal()); //Aca se inicia y se lanza la aplicación
}


class Principal extends StatelessWidget { //Se crea una clase que hereda de StatelessWidget para crear un widget sin estado 
  const Principal({super.key}); //Constructor de la clase principal 

  @override //Se sobreescribe el metodo buid de la clase padre para generar una interfaz de usuario 
  Widget build(BuildContext context) { 
    // Se  retorna un widget, en nuestro caso Material App
    return const MaterialApp(
    title:'Mi primera App -ADSO 2873711',
    home: Text("Primera aplicación en flutter\n Esteban Reyes \n ADSO 2873711 \n CPIC - SENA"),

    );
  }
}