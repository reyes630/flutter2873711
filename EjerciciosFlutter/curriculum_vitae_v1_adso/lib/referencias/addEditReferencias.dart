import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';
import '../utils/utils.dart';

// Controladores de los campos
final TextEditingController idController = TextEditingController();
final TextEditingController tituloController = TextEditingController();
final TextEditingController tipoReferenciaController = TextEditingController();
final TextEditingController numeroTelefonoController = TextEditingController();
final TextEditingController detallesController = TextEditingController();

// Limpiar los campos del formulario
void limpiarCamposReferencia() {
  tituloController.clear();
  tipoReferenciaController.clear();
  numeroTelefonoController.clear();
  detallesController.clear();
}

// Función para mostrar el modal de agregar o editar referencia
showModalAddEditReferencia(
    context, String opcionAddEdit, dynamic elementoActual, dynamic index) {
  limpiarCamposReferencia();

  // Si es una edición, pre-cargar los datos en los campos
  if (opcionAddEdit == "edit") {
    tituloController.text = elementoActual["titulo"];
    tipoReferenciaController.text = elementoActual["tipoReferencia"];
    numeroTelefonoController.text = elementoActual["numeroTelefono"];
    detallesController.text = elementoActual["detalles"];
  }

  // Mostrar el modal
  showModalBottomSheet(
    isScrollControlled: false,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(opcionAddEdit == "new"
              ? "Ingresar Referencia"
              : "Editar Referencia"),
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
              // Agregar nueva referencia
              Map<String, dynamic> newItem = {
                "titulo": tituloController.text,
                "tipoReferencia": tipoReferenciaController.text,
                "numeroTelefono": numeroTelefonoController.text,
                "detalles": detallesController.text,
                "colorCategoria": tipoReferenciaController.text == "Laboral"
                    ? Colors.blueAccent
                    : Colors.greenAccent,
              };
              miControlador.addItemListaReferencias(newItem);
              Get.back();
              limpiarCamposReferencia();
              Get.snackbar("Atención!", "Referencia agregada con éxito",
                  backgroundColor: Colors.green[300],
                  colorText: Colors.white);
            } else {
              // Editar referencia
              Map<String, dynamic> elementEdit = {
                "titulo": tituloController.text,
                "tipoReferencia": tipoReferenciaController.text,
                "numeroTelefono": numeroTelefonoController.text,
                "detalles": detallesController.text,
                "colorCategoria": tipoReferenciaController.text == "Laboral"
                    ? Colors.blueAccent
                    : Colors.greenAccent,
              };
              miControlador.editItemListaReferencias(index, elementEdit);
              Get.back();
              limpiarCamposReferencia();
              Get.snackbar("Atención!", "Referencia editada con éxito",
                  backgroundColor: Colors.green[300],
                  colorText: Colors.white);
            }
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              TextFormField(
                controller: tituloController,
                decoration: const InputDecoration(
                  labelText: "Título",
                  hintText: "Ingrese el nombre de la referencia",
                ),
              ),
              TextFormField(
                controller: tipoReferenciaController,
                decoration: const InputDecoration(
                  labelText: "Tipo de Referencia",
                  hintText: "Ingrese si es personal o laboral",
                ),
              ),
              TextFormField(
                controller: numeroTelefonoController,
                decoration: const InputDecoration(
                  labelText: "Número de Teléfono",
                  hintText: "Ingrese el número de teléfono",
                ),
              ),
              TextFormField(
                controller: detallesController,
                decoration: const InputDecoration(
                  labelText: "Detalles",
                  hintText: "Ingrese los detalles de la referencia",
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
