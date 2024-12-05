import 'package:curriculum_vitae_v1_adso/formacionContinuada/addEditFormacionContinuada.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/utils.dart';
import 'viewFormacionContinuada.dart';

class PrincipalFormacionContinuada extends StatefulWidget {
  const PrincipalFormacionContinuada({super.key});

  @override
  State<PrincipalFormacionContinuada> createState() =>
      _PrincipalFormacionContinuadaState();
}

class _PrincipalFormacionContinuadaState
    extends State<PrincipalFormacionContinuada> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          title:const Center(child: Text("Formación Continuada")),
          backgroundColor: Utils.primaryColor,
          foregroundColor: Utils.foregroundColor,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
            child: const Icon(Icons.add),
            onPressed: () {
              showModalAddEditFormacionContinuada(context, "new", null, null);
            }),
        body: ListView.builder(
          itemCount: miControlador.listaFormacionContinuada.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(
                    miControlador.listaFormacionContinuada[index]["titulo"]),
                subtitle: Text(
                    miControlador.listaFormacionContinuada[index]["nivel"],
                    style: TextStyle(color: miControlador.ListaExperienciaLaboral[index]["colorCategoria"],
                    fontWeight: FontWeight.bold,
                    ),
                ),
                leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                  'Inicio: ${miControlador.listaFormacionContinuada[index]['fechaInicio']}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                  'Fin: ${miControlador.listaFormacionContinuada[index]['fechaFin']}',
                  style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          viewFormacionContinuada(context,
                              miControlador.listaFormacionContinuada[index]);
                        }, icon:const Icon(Icons.search,color: Colors.black,)),
                    IconButton(
                        onPressed: () {
                          showModalAddEditFormacionContinuada(
                              context,
                              "edit",
                              miControlador.listaFormacionContinuada[index],
                              index);
                        }, icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title: "Atención",
                            middleText:
                                "¿Está seguro de eliminar el registro de la formación continuada ${miControlador.listaFormacionContinuada[index]["titulo"]}?",
                            onCancel: () {},
                            onConfirm: () {
                              miControlador
                                  .removeItemListaFormacionContinuada(index);
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