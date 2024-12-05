import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/utils.dart';

final TextEditingController idController = TextEditingController();
final TextEditingController tituloController = TextEditingController();
final TextEditingController fechaInicioController = TextEditingController();
final TextEditingController fechaFinController = TextEditingController();
final TextEditingController funcionesController = TextEditingController();
final TextEditingController categoriaController = TextEditingController();

void limpiarCampos() {
  tituloController.clear();
  fechaInicioController.clear();
  fechaFinController.clear();
  funcionesController.clear();
  categoriaController.clear();
}

showModalAddEditExperiencia(context, String opcionAddEdit, dynamic elementoActual, dynamic index){
  limpiarCampos();
  if(opcionAddEdit == "edit"){
    tituloController.text = elementoActual["titulo"];
    fechaInicioController.text = elementoActual["fechaInicio"];
    fechaFinController.text = elementoActual["fechaFin"];
    funcionesController.text = elementoActual["funciones"];
    categoriaController.text = elementoActual["categoria"];
  }
  showModalBottomSheet(
    isScrollControlled: false,
    context: context, 
    builder: (context){
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text(opcionAddEdit=="new"?"Ingresar Experiencia":"Editar Experiencia")),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child:opcionAddEdit=="new"?const Icon(Icons.save):const Icon(Icons.edit),
        onPressed: () {
          // Se ejecuta cuando se guarda un elemento de experiencia
          if(opcionAddEdit == "new"){
            Map<String,dynamic> newItem = {
              //"id": 9,
              "titulo": tituloController.text,
              "fechaInicio": fechaInicioController.text,
              "fechaFin": fechaFinController.text,
              "funciones": funcionesController.text,
              "categoria": categoriaController.text,
              "colorCategoria": Colors.blue
            };
            miControlador.addItemListaExperienciaLaboral(newItem);
            Get.back();
            limpiarCampos();
            Get.snackbar("Atención", "Experiencia agregada con éxito!!!",
            backgroundColor: Colors.blue,
            colorText: Colors.black);
          } else {
            // Lógica para editar registro de experiencia.
            Map<String,dynamic> elementEdit = {
              "titulo": tituloController.text,
              "fechaInicio": fechaInicioController.text,
              "fechaFin": fechaFinController.text,
              "funciones": funcionesController.text,
              "categoria": categoriaController.text,
              "colorCategoria": Colors.blue,
            };
            miControlador.editItemListaExperienciaLaboral(index, elementEdit);
            Get.back();
            limpiarCampos();
            Get.snackbar("Atención", "Experiencia editada con éxito!!!",
            backgroundColor: Colors.blue,
            colorText: Colors.black);
          }
      }),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextFormField(
              controller: tituloController,
              decoration:const InputDecoration(
                labelText: "Título:",
                hintText: "Ingrese el título de la experiencia.",
              ), 
            ),
            TextFormField(
              controller: fechaInicioController,
              decoration:const InputDecoration(
                labelText: "Fecha Inico:",
                hintText: "Ingrese la fecha de inicio de la experiencia.",
              ), 
            ),
            TextFormField(
              controller: fechaFinController,
              decoration:const InputDecoration(
                labelText: "Fecha Fin:",
                hintText: "Ingrese la fecha de fin de la experiencia.",
              ), 
            ),
            TextFormField(
              controller: funcionesController,
              decoration:const InputDecoration(
                labelText: "Funciones:",
                hintText: "Ingrese las funciones de la experiencia.",
              ), 
            ),
            TextFormField(
              controller: categoriaController,
              decoration:const InputDecoration(
                labelText: "Categoría:",
                hintText: "Ingrese la categoría de la experiencia.",
              ), 
            ),
          ],
        ),
      ),
    );
  });
}