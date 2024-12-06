import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:curriculum_vitae_v1_adso/referencias/addEditReferencias.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/referenciasData.dart';
import '../utils/utils.dart';

class PrincipalReferencias extends StatefulWidget {
  const PrincipalReferencias({super.key});

  @override
  State<PrincipalReferencias> createState() => _PrincipalReferenciasState();
}

class _PrincipalReferenciasState extends State<PrincipalReferencias> {

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Referencias")),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
            child: const Icon(Icons.add),
            onPressed: () {
              // El modal de agregar una nueva referencia
              showModalAddEditReferencia(context, "new", null, null);
            },
          ),
          body: ListView.builder(
            itemCount: miControlador.listaReferencias.length, // Utilizamos la lista desde el controlador
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: Icon(
                    miControlador.listaReferencias[index]["tipoReferencia"] == "Laboral"
                        ? Icons.work
                        : Icons.person,
                    color: miControlador.listaReferencias[index]["colorCategoria"],
                  ),
                  title: Text(miControlador.listaReferencias[index]["titulo"]), // Cambiado para usar el controlador
                  subtitle: Text(
                    "Tipo: ${miControlador.listaReferencias[index]["tipoReferencia"]}\nTeléfono: ${miControlador.listaReferencias[index]["numeroTelefono"]}",
                    style: const TextStyle(fontSize: 12),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Botón para ver toda la información
                      IconButton(
                        onPressed: () {
                          // Lógica para ver toda la información de la referencia
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(miControlador.listaReferencias[index]["titulo"]),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Tipo: ${miControlador.listaReferencias[index]["tipoReferencia"]}"),
                                      Text("Teléfono: ${miControlador.listaReferencias[index]["numeroTelefono"]}"),
                                      Text("Detalles: ${miControlador.listaReferencias[index]["detalles"]}"),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: const Text("Cerrar"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.info),
                      ),
                      // Botón para editar una referencia
                      IconButton(
                        onPressed: () {
                          // Lógica para editar una referencia
                          showModalAddEditReferencia(context, "edit", miControlador.listaReferencias[index], index);
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      // Botón para eliminar una referencia
                      IconButton(
                        onPressed: () {
                          // Lógica para eliminar una referencia
                          Get.defaultDialog(
                            title: "Atención!!!",
                            middleText: "¿Está seguro de eliminar el registro con la referencia ${miControlador.listaReferencias[index]["titulo"]}?",
                            onCancel: () {},
                            onConfirm: () {
                              miControlador.removeItemListaReferencias(index);
                              Get.back();
                            },
                          );
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
