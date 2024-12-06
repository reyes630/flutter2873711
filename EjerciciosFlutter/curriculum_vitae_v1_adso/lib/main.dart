
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/myController.dart';
import 'data/educacionFormalData.dart';
import 'data/experienciaData.dart';
import 'data/formacionContinuadaData.dart';
import 'data/publicacionesData.dart';
import 'data/referenciasData.dart';
import 'interfaz/principal.dart';

void main(List<String> args) {
  Get.put(Mycontroller());
  miControlador.cambiarListaExperienciaLaboral(listaExperienciaDesarrollador);
  miControlador.cambiarListaEducacionFormal(listaEducacionFormal);
  miControlador.cambiarListaFormacionContinuada(listaFormacionContinuada);
  miControlador.cambiarListaPublicaciones(listaPublicaciones);
  miControlador.cambiarListaReferencias(listaReferencias);
  runApp(const Principal());
}

Mycontroller miControlador = Get.find(); // Crea instancia de la clase MyController