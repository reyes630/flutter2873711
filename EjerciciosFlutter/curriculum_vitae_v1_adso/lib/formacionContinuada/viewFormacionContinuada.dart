import 'package:flutter/material.dart';

import '../utils/utils.dart';

viewFormacionContinuada(BuildContext context, Map elementoActual) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Visualizar Formación Continuada'),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          body: ListView(children: [
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.school),
              title: Text(elementoActual['titulo'],style: TextStyle(color: elementoActual["colorCategoria"],fontWeight: FontWeight.bold)),
              subtitle: const Text("Nombre del Curso"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.date_range),
              title: Text(elementoActual['fechaInicio'],style:const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Fecha de Inicio"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.date_range_outlined),
              title: Text(elementoActual['fechaFin'],style:const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Fecha de Finalización"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.account_balance),
              title: Text(elementoActual['institucion'],style:const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Institución que ofrece el curso"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.description),
              title: Text(elementoActual['descripcion']),
              subtitle: const Text("Descripción del Curso"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.access_time),
              title: Text(elementoActual['duracion'],style:const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Duración del Curso"),
            ),
            ListTile(
              iconColor: elementoActual['colorCategoria'],
              leading: const Icon(Icons.star),
              title: Text(elementoActual['nivel'],style:const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Nivel del Curso"),
            ),
          ]),
        );
      });
}