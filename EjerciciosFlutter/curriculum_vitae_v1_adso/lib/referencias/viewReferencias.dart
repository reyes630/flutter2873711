import 'package:flutter/material.dart';
import '../utils/utils.dart';

viewReferencia(BuildContext context, Map elementoActual) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Visualizar Referencia')),
          backgroundColor: Utils.primaryColor,
          foregroundColor: Utils.foregroundColor,
        ),
        body: ListView(children: [
          ListTile(
            iconColor: elementoActual['colorCategoria'],
            leading: const Icon(Icons.person),
            title: Text(elementoActual['titulo'],
                style: TextStyle(
                    color: elementoActual["colorCategoria"],
                    fontWeight: FontWeight.bold)),
            subtitle: const Text("Nombre de la Referencia"),
          ),
          ListTile(
            iconColor: elementoActual['colorCategoria'],
            leading: const Icon(Icons.phone),
            title: Text(elementoActual['numeroTelefono'],
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text("Número de Teléfono"),
          ),
          ListTile(
            iconColor: elementoActual['colorCategoria'],
            leading: const Icon(Icons.label),
            title: Text(elementoActual['tipoReferencia'],
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text("Tipo de Referencia"),
          ),
          ListTile(
            iconColor: elementoActual['colorCategoria'],
            leading: const Icon(Icons.info),
            title: Text(elementoActual['detalles'],
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text("Detalles de la Referencia"),
          ),
        ]),
      );
    },
  );
}
