import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/utils.dart';

final TextEditingController idContinuadaController = TextEditingController();
final TextEditingController tituloContinuadaController = TextEditingController();
final TextEditingController fechaInicioContinuadaController = TextEditingController();
final TextEditingController fechaFinContinuadaController = TextEditingController();
final TextEditingController institucionContinuadaController = TextEditingController();
final TextEditingController descripcionContinuadaController = TextEditingController();
final TextEditingController duracionContinuadaController = TextEditingController();
final TextEditingController nivelContinuadaController = TextEditingController();

void limpiarCamposFormacionContinuada() {
  tituloContinuadaController.clear();
  fechaInicioContinuadaController.clear();
  fechaFinContinuadaController.clear();
  institucionContinuadaController.clear();
  descripcionContinuadaController.clear();
  duracionContinuadaController.clear();
  nivelContinuadaController.clear();
}

showModalAddEditFormacionContinuada(
    context, String opcionAddEdit, dynamic elementoActual, dynamic index) {
  limpiarCamposFormacionContinuada();
  if (opcionAddEdit == "edit") {
    tituloContinuadaController.text = elementoActual["titulo"];
    fechaInicioContinuadaController.text = elementoActual["fechaInicio"];
    fechaFinContinuadaController.text = elementoActual["fechaFin"];
    institucionContinuadaController.text = elementoActual["institucion"];
    descripcionContinuadaController.text = elementoActual["descripcion"];
    duracionContinuadaController.text = elementoActual["duracion"];
    nivelContinuadaController.text = elementoActual["nivel"];
  }

  showModalBottomSheet(
      isScrollControlled: false,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(opcionAddEdit == "new"
                ? "Ingresar Formación Continuada"
                : "Editar Formación Continuada"),
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
                    "titulo": tituloContinuadaController.text,
                    "fechaInicio": fechaInicioContinuadaController.text,
                    "fechaFin": fechaFinContinuadaController.text,
                    "institucion": institucionContinuadaController.text,
                    "descripcion": descripcionContinuadaController.text,
                    "duracion": duracionContinuadaController.text,
                    "nivel": nivelContinuadaController.text,
                    "colorCategoria": Colors.blue,
                  };
                  miControlador.addItemListaFormacionContinuada(newItem);
                  Get.back();
                  limpiarCamposFormacionContinuada();
                  Get.snackbar("Atención!", "Formación continuada agregada con éxito",
                      backgroundColor: Colors.green[300],
                      colorText: Colors.white);
                } else {
                  Map<String, dynamic> elementEdit = {
                    "titulo": tituloContinuadaController.text,
                    "fechaInicio": fechaInicioContinuadaController.text,
                    "fechaFin": fechaFinContinuadaController.text,
                    "institucion": institucionContinuadaController.text,
                    "descripcion": descripcionContinuadaController.text,
                    "duracion": duracionContinuadaController.text,
                    "nivel": nivelContinuadaController.text,
                    "colorCategoria": Colors.blue,
                  };
                  miControlador.editItemListaFormacionContinuada(
                      index, elementEdit);
                  Get.back();
                  limpiarCamposFormacionContinuada();
                  Get.snackbar("Atención!", "Formación continuada editada con éxito",
                      backgroundColor: Colors.green[300],
                      colorText: Colors.white);
                }
              }),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: tituloContinuadaController,
                  decoration: const InputDecoration(
                      labelText: "Título",
                      hintText: "Ingrese el título del curso o taller"),
                ),
                TextFormField(
                  controller: fechaInicioContinuadaController,
                  decoration: const InputDecoration(
                      labelText: "Fecha Inicio",
                      hintText: "Ingrese la fecha de inicio del curso o taller"),
                ),
                TextFormField(
                  controller: fechaFinContinuadaController,
                  decoration: const InputDecoration(
                      labelText: "Fecha Fin",
                      hintText: "Ingrese la fecha de finalización del curso"),
                ),
                TextFormField(
                  controller: institucionContinuadaController,
                  decoration: const InputDecoration(
                      labelText: "Institución",
                      hintText: "Ingrese la institución que ofrece el curso"),
                ),
                TextFormField(
                  controller: descripcionContinuadaController,
                  decoration: const InputDecoration(
                      labelText: "Descripción",
                      hintText: "Breve descripción del contenido del curso"),
                ),
                TextFormField(
                  controller: duracionContinuadaController,
                  decoration: const InputDecoration(
                      labelText: "Duración",
                      hintText: "Duración del curso (Ej. 1 mes, 2 semanas)"),
                ),
                TextFormField(
                  controller: nivelContinuadaController,
                  decoration: const InputDecoration(
                      labelText: "Nivel",
                      hintText: "Nivel del curso (Ej. Básico, Avanzado)"),
                ),
              ],
            ),
          ),
        );
      });
}