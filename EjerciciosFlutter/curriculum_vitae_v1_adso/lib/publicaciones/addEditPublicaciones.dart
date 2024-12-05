import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/utils.dart';

final TextEditingController tituloController = TextEditingController();
final TextEditingController fechaController = TextEditingController();
final TextEditingController contenidoController = TextEditingController();
final TextEditingController categoriaController = TextEditingController();

void limpiarCampos() {
  tituloController.clear();
  fechaController.clear();
  contenidoController.clear();
  categoriaController.clear();
}

showModalAddEditPublicaciones(
    context, String opcionAddEdit, dynamic elementoActual, dynamic index) {
  limpiarCampos();
  if (opcionAddEdit == "edit") {
    tituloController.text = elementoActual["titulo"];
    fechaController.text = elementoActual["fecha"];
    contenidoController.text = elementoActual["contenido"];
    categoriaController.text = elementoActual["categoria"];
  }

  showModalBottomSheet(
      isScrollControlled: false,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(opcionAddEdit == "new"
                ? "Ingresar Publicación"
                : "Editar Publicación"),
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
                    "fecha": fechaController.text,
                    "contenido": contenidoController.text,
                    "categoria": categoriaController.text,
                    "colorCategoria": Colors.blue,
                  };
                  miControlador.addItemListaPublicaciones(newItem);
                  Get.back();
                  limpiarCampos();
                  Get.snackbar("Atención!", "Publicación agregada con éxito",
                      backgroundColor: Colors.green[300],
                      colorText: Colors.white);
                } else {
                  Map<String, dynamic> elementEdit = {
                    "titulo": tituloController.text,
                    "fecha": fechaController.text,
                    "contenido": contenidoController.text,
                    "categoria": categoriaController.text,
                    "colorCategoria": Colors.blue,
                  };
                  miControlador.editItemListaPublicaciones(index, elementEdit);
                  Get.back();
                  limpiarCampos();
                  Get.snackbar("Atención!", "Publicación editada con éxito",
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
                      hintText: "Ingrese título de la publicación"),
                ),
                TextFormField(
                  controller: fechaController,
                  decoration: const InputDecoration(
                      labelText: "Fecha",
                      hintText: "Ingrese la fecha de la publicación"),
                ),
                TextFormField(
                  controller: contenidoController,
                  decoration: const InputDecoration(
                      labelText: "Contenido",
                      hintText: "Ingrese el contenido de la publicación"),
                ),
                TextFormField(
                  controller: categoriaController,
                  decoration: const InputDecoration(
                      labelText: "Categoría",
                      hintText: "Ingrese categoría de la publicación"),
                ),
              ],
            ),
          ),
        );
      });
}