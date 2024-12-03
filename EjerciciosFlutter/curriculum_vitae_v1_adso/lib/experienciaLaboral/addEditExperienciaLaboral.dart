import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final TextEditingController idController = TextEditingController();
final TextEditingController tituloController = TextEditingController();
final TextEditingController fechaInicioController = TextEditingController();
final TextEditingController fechaFinController = TextEditingController();
final TextEditingController funcionesController = TextEditingController();
final TextEditingController categoriaController = TextEditingController();
final TextEditingController colorCategoriaController = TextEditingController();

void limpiarCampos() {
  tituloController.clear();
  fechaInicioController.clear();
  fechaFinController.clear();
  funcionesController.clear();
  categoriaController.clear();
}


showModalAddEditExperiencia(context){
  showModalBottomSheet(
    context: context, 
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Ingresar Experiencia"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon(Icons.save),
          
          onPressed: (){
            //Se ejecuta cuando se guarda un elemento de experiencia Laboral
            Map<String,dynamic> newItem= {
              //"id": 2,
              "titulo": tituloController.text,
              "fechaInicio": fechaInicioController.text,
              "fechaFin": fechaFinController.text,
              "funciones": funcionesController.text,
              "categoria": categoriaController.text,
              "colorCategoria": Colors.green
            };
            miControlador.addItemListaExperienciaLaboral(newItem);
            Get.back();
            limpiarCampos();
            Get.snackbar("Atención!", "Experiencia agregada con éxito",
            backgroundColor: Colors.green[300],
            colorText: Colors.white);
            

        }),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              
              TextFormField(
                controller: tituloController,
                decoration: InputDecoration(
                  labelText: "titulo",
                  hintText: "Ingrese titulo de la experiencia"
                ),
              ),
              
              TextFormField(
                controller: fechaInicioController,
                decoration: InputDecoration(
                  labelText: "fecha Inicio",
                  hintText: "Ingrese Fecha Inicio de la experiencia"
                ),
              ),
              
              TextFormField(
                controller: fechaFinController,
                decoration: InputDecoration(
                  labelText: "Fecha Fin",
                  hintText: "Ingrese Fecha Fin de la experiencia"
                ),
              ),
              
              TextFormField(
                controller: funcionesController,
                decoration: InputDecoration(
                  labelText: "Funciones",
                  hintText: "Ingrese Funciones de la experiencia"
                ),
              ),
              TextFormField(
                controller: categoriaController,
                decoration: InputDecoration(
                  labelText: "Categoria",
                  hintText: "Ingrese Categoria de la experiencia"
                ),
              ),
              
              
          
            ],
          ),
        ),
      );
    }
    );
}