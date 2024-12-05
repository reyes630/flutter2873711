import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/utils.dart';
import 'addEditEducacionFormal.dart';
import 'viewEducacionFormal.dart';

class PrincipalEducacionFormal extends StatefulWidget {
  const PrincipalEducacionFormal({super.key});

  @override
  State<PrincipalEducacionFormal> createState() =>
      _PrincipalEducacionFormalState();
}

class _PrincipalEducacionFormalState extends State<PrincipalEducacionFormal> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          title:const Center(child: Text("Formación Formal")),
          backgroundColor: Utils.primaryColor,
          foregroundColor: Utils.foregroundColor,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
            child: const Icon(Icons.add),
            onPressed: () {
              showModalAddEditEducacionFormal(context, "new", null, null);
            }),
        body: ListView.builder(
          itemCount: miControlador.listaEducacionFormal.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title:
                    Text(miControlador.listaEducacionFormal[index]["titulo"],
                    ),
                subtitle:
                    Text(miControlador.listaEducacionFormal[index]["nivel"],
                      style: TextStyle(color: miControlador.listaEducacionFormal[index]["colorCategoria"],
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                  'Inicio: ${miControlador.listaEducacionFormal[index]['fechaInicio']}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                  'Fin: ${miControlador.listaEducacionFormal[index]['fechaFin']}',
                  style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          viewEducacionFormal(context,
                              miControlador.listaEducacionFormal[index]);
                        }, icon:const Icon(Icons.search,color: Colors.black,)),
                    IconButton(
                        onPressed: () {
                          showModalAddEditEducacionFormal(context, "edit",
                              miControlador.listaEducacionFormal[index], index);
                        }, icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title: "Atención",
                            middleText:
                                "¿Está seguro de eliminar el registro de la formación formal ${miControlador.listaEducacionFormal[index]["titulo"]}?",
                            onCancel: () {},
                            onConfirm: () {
                              miControlador
                                  .removeItemListaEducacionFormal(index);
                              Get.back();
                            },
                          );
                        }, icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            );
          },
        )));
  }
}