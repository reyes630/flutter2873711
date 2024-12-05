import 'package:flutter/material.dart';

import '../utils/utils.dart';

viewExperienciaLaboral(BuildContext context,Map elementoActual){
  showModalBottomSheet(
    isScrollControlled: true,
    context: context, 
    builder:(context){
    return Scaffold(
      appBar: AppBar(
        title:const Center(child: Text("Visualizar experiencia Laboral")),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      body: ListView(
        children: [
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.category),
            title: Text(elementoActual["categoria"],style: TextStyle(color: elementoActual["colorCategoria"],fontWeight: FontWeight.bold)),
            subtitle: Text("Categoria"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(elementoActual["iconCategoria"]),
            title: Text(elementoActual["titulo"],style:const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Cargo"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.work_history),
            title:Text(elementoActual["fechaInicio"],style:const TextStyle(fontWeight: FontWeight.bold)),   
            subtitle: Text("Inicio de periodo Trabajado"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.check_circle),
            title:Text(elementoActual["fechaFin"],style:const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Finalización de periodo Trabajado"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.work),
            title: Text(elementoActual["funciones"]),
            subtitle: Text("Funciones"),
          ),
        ],
      ),
    );
  });
}