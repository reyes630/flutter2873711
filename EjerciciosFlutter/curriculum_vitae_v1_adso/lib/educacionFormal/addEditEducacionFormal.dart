import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/utils.dart';

final TextEditingController idController = TextEditingController();
final TextEditingController tituloController = TextEditingController();
final TextEditingController fechaInicioController = TextEditingController();
final TextEditingController fechaFinController = TextEditingController();
final TextEditingController institucionController = TextEditingController();
final TextEditingController nivelController = TextEditingController();

void limpiarCamposFormacionFormal() {
  tituloController.clear();
  fechaInicioController.clear();
  fechaFinController.clear();
  institucionController.clear();
  nivelController.clear();
}

showModalAddEditEducacionFormal(
    context, String opcionAddEdit, dynamic elementoActual, dynamic index) {
  limpiarCamposFormacionFormal();
  if (opcionAddEdit == "edit") {
    tituloController.text = elementoActual["titulo"];
    fechaInicioController.text = elementoActual["fechaInicio"];
    fechaFinController.text = elementoActual["fechaFin"];
    institucionController.text = elementoActual["institucion"];
    nivelController.text = elementoActual["nivel"];
  }

  showModalBottomSheet(
      isScrollControlled: false,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(opcionAddEdit == "new"
                ? "Ingresar Formación Formal"
                : "Editar Formación Formal"),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Utils.primaryColor,
              foregroundColor: Utils.foregroundColor,
              child: opcionAddEdit == "new"
                  ? const Icon(Icons.save)
                  : const Icon(Icons.edit),
              onPressed: () {
                if (opcionAddEdit == "new") {
                  Map<String, dynamic> newItem = {
                    "titulo": tituloController.text,
                    "fechaInicio": fechaInicioController.text,
                    "fechaFin": fechaFinController.text,
                    "institucion": institucionController.text,
                    "nivel": nivelController.text,
                    "colorCategoria": Colors.blue,
                  };
                  miControlador.addItemListaEducacionFormal(newItem);
                  Get.back();
                  limpiarCamposFormacionFormal();
                  Get.snackbar("Atención!", "Formación agregada con éxito",
                      backgroundColor: Colors.green[300],
                      colorText: Colors.white);
                } else {
                  Map<String, dynamic> elementEdit = {
                    "titulo": tituloController.text,
                    "fechaInicio": fechaInicioController.text,
                    "fechaFin": fechaFinController.text,
                    "institucion": institucionController.text,
                    "nivel": nivelController.text,
                    "colorCategoria": Colors.blue,
                  };
                  miControlador.editItemListaEducacionFormal(
                      index, elementEdit);
                  Get.back();
                  limpiarCamposFormacionFormal();
                  Get.snackbar("Atención!", "Formación editada con éxito",
                      backgroundColor: Colors.green[300],
                      colorText: Colors.white);
                }
              }),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: tituloController,
                  decoration: const InputDecoration(
                      labelText: "Título",
                      hintText: "Ingrese el título del programa de formación"),
                ),
                TextFormField(
                  controller: fechaInicioController,
                  decoration: const InputDecoration(
                      labelText: "Fecha Inicio",
                      hintText: "Ingrese la fecha de inicio del programa"),
                ),
                TextFormField(
                  controller: fechaFinController,
                  decoration: const InputDecoration(
                      labelText: "Fecha Fin",
                      hintText:
                          "Ingrese la fecha de finalización del programa"),
                ),
                TextFormField(
                  controller: institucionController,
                  decoration: const InputDecoration(
                      labelText: "Institución",
                      hintText: "Ingrese la institución educativa"),
                ),
                TextFormField(
                  controller: nivelController,
                  decoration: const InputDecoration(
                      labelText: "Nivel",
                      hintText:
                          "Ingrese el nivel educativo (Ej. Pregrado, Maestría)"),
                ),
              ],
            ),
          ),
        );
      });
}