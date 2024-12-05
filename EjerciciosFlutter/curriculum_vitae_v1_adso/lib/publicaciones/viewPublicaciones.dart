import 'package:flutter/material.dart';

import '../utils/utils.dart';

viewPublicaciones(BuildContext context, Map elementoActual) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title:const Center(child: Text('Visualizar Publicación')),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          body: ListView(children: [
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.category),
              title: Text(elementoActual['categoria'],style: TextStyle(color: elementoActual["colorCategoria"],fontWeight: FontWeight.bold)),
              subtitle: const Text("Categoría"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.article),
              title: Text(elementoActual["titulo"],style:const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Título de la publicación"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.date_range),
              title: Text(elementoActual['fecha'],style:const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Fecha de publicación"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.description),
              title: Text(elementoActual["contenido"]),
              subtitle: const Text("Contenido de la publicación"),
            ),
          ]),
        );
      });
}