import 'package:curriculum_vitae_v1_adso/experienciaLaboral/addEditExperienciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/experienciaLaboral/viewExperienciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';

class PrincipalExperienciaLaboral extends StatefulWidget {
  const PrincipalExperienciaLaboral({super.key});

  @override
  State<PrincipalExperienciaLaboral> createState() => _PrincipalExperienciaLaboralState();
}

class _PrincipalExperienciaLaboralState extends State<PrincipalExperienciaLaboral> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      appBar: AppBar(
        title:const Center(child: Text("Experiencia Laboral")),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child:const Icon(Icons.add),
        onPressed: (){
          // Lógica para agregar una experiencia
          showModalAddEditExperiencia(context, "new", null, null);
      }),
      body: ListView.builder(
        itemCount: miControlador.ListaExperienciaLaboral.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaExperienciaLaboral[index]["titulo"]),
              subtitle: Text(miControlador.ListaExperienciaLaboral[index]["categoria"],
                style: TextStyle(color: miControlador.ListaExperienciaLaboral[index]["colorCategoria"],
                fontWeight: FontWeight.bold,
                ),
              ),
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                  'Inicio: ${miControlador.ListaExperienciaLaboral[index]['fechaInicio']}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                  'Fin: ${miControlador.ListaExperienciaLaboral[index]['fechaFin']}',
                  style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
              trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: (){
                        // Lógica para visualizar el detalle de una experiencia laboral.
                        viewExperienciaLaboral(context, miControlador.ListaExperienciaLaboral[index]);
                      }, icon:const Icon(Icons.search,color: Colors.black,)),
                      IconButton(onPressed: (){
                        // Lógica para editar una experiencia laboral.
                        showModalAddEditExperiencia(context, "edit", miControlador.ListaExperienciaLaboral[index], index);
                      }, icon: Icon(Icons.edit)),
                      IconButton(onPressed: (){
                        // Lógica para eliminar un elemento de una experiencia laboral.
                        Get.defaultDialog(
                          title: "Atención!!!",
                          middleText: "Esta seguro de eliminar el registro con la experiencia como ${miControlador.ListaExperienciaLaboral[index]["titulo"]}.",
                          onCancel: () {

                          },
                          onConfirm: () {
                            miControlador.removeItemListaExperienciaLaboral(index);
                            Get.back();
                          }
                        );
                      }, icon: const Icon(Icons.delete)),
                    ],
                  ),
            ),
          );
        },
      ),
    ));
  }
}