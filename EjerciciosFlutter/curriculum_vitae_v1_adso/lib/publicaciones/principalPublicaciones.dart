import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';
import '../utils/utils.dart';
import 'addEditPublicaciones.dart';
import 'viewPublicaciones.dart';

class PrincipalPublicaciones extends StatefulWidget {
  const PrincipalPublicaciones({super.key});

  @override
  State<PrincipalPublicaciones> createState() => _PrincipalPublicacionesState();
}

class _PrincipalPublicacionesState extends State<PrincipalPublicaciones> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Publicaciones")),
          backgroundColor: Utils.primaryColor,
          foregroundColor: Utils.foregroundColor,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
            child: const Icon(Icons.add),
            onPressed: () {
              showModalAddEditPublicaciones(context, "new", null, null);
            }),
        body: ListView.builder(
          itemCount: miControlador.listaPublicaciones.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(miControlador.listaPublicaciones[index]["titulo"]),
                subtitle: Text(
                  miControlador.listaPublicaciones[index]["categoria"],
                  style: TextStyle(
                    color: miControlador.ListaExperienciaLaboral[index]
                        ["colorCategoria"],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(miControlador.listaPublicaciones[index]['fecha'],
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          viewPublicaciones(
                              context, miControlador.listaPublicaciones[index]);
                        }, icon:const Icon(Icons.search,color: Colors.black,)),
                    IconButton(
                        onPressed: () {
                          showModalAddEditPublicaciones(context, "edit",
                              miControlador.listaPublicaciones[index], index);
                        }, icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title: "Atención",
                            middleText:
                                "¿Está seguro de eliminar la publicación ${miControlador.listaPublicaciones[index]["titulo"]}?",
                            onCancel: () {},
                            onConfirm: () {
                              miControlador.removeItemListaPublicaciones(index);
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