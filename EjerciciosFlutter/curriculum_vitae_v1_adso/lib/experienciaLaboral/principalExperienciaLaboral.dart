import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';
import 'addEditExperienciaLaboral.dart';

class PrincipalexperienciaLaboral extends StatefulWidget {
  const PrincipalexperienciaLaboral({super.key});

  @override
  State<PrincipalexperienciaLaboral> createState() => _PrincipalexperienciaLaboralState();
}

class _PrincipalexperienciaLaboralState extends State<PrincipalexperienciaLaboral> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      appBar: AppBar(
        title: Text("Experiencia Laboral"),
        backgroundColor:Utils.primaryColor,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: (){
          showModalAddEditExperiencia(context);

      }),
      body: ListView.builder(
        itemCount: miControlador.ListaExperienciaLaboral.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaExperienciaLaboral[index]["titulo"]),
              subtitle: Text(miControlador.ListaExperienciaLaboral[index]["categoria"]),
              leading: Text(miControlador.ListaExperienciaLaboral[index]["fechaInicio"]),
            ),
          );
        }
        
        ),
    ));
  }
}