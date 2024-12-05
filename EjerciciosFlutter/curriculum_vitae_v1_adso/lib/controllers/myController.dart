import 'package:get/get.dart';

class Mycontroller extends GetxController {
  final _titulo = 'Curriculum Vitae V2 - ADSO'.obs;
  final _listaExperienciLaboral = [].obs;
  final _listaEducacionFormal = [].obs;
  final _listaFormacionContinuada = [].obs;
  final _listaPublicaciones = [].obs;

  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  void addItemListaExperienciaLaboral(Map<String, dynamic> item){
    _listaExperienciLaboral.add(item);
  }
  void cambiarListaExperienciaLaboral(List item){
    _listaExperienciLaboral.value = item;
  }
  void removeItemListaExperienciaLaboral(int index) {
    _listaExperienciLaboral.removeAt(index);
  }

  void editItemListaExperienciaLaboral(int index, Map item) {
    _listaExperienciLaboral[index] = item;
  }

  String get Titulo => _titulo.value;
  List get ListaExperienciaLaboral => _listaExperienciLaboral.value;

  //listaEducacionFormal
  void addItemListaEducacionFormal(Map<String, dynamic> item) {
    _listaEducacionFormal.add(item);
  }

  void cambiarListaEducacionFormal(List item) {
    _listaEducacionFormal.value = item;
  }

  void removeItemListaEducacionFormal(int index) {
    _listaEducacionFormal.removeAt(index);
  }

  void editItemListaEducacionFormal(int index, Map itemEdit) {
    _listaEducacionFormal[index] = itemEdit;
  }

  List get listaEducacionFormal => _listaEducacionFormal.value;

  //listaFormacionContinuada
  void addItemListaFormacionContinuada(Map<String, dynamic> item) {
    _listaFormacionContinuada.add(item);
  }

  void cambiarListaFormacionContinuada(List item) {
    _listaFormacionContinuada.value = item;
  }

  void removeItemListaFormacionContinuada(int index) {
    _listaFormacionContinuada.removeAt(index);
  }

  void editItemListaFormacionContinuada(int index, Map itemEdit) {
    _listaFormacionContinuada[index] = itemEdit;
  }

  List get listaFormacionContinuada => _listaFormacionContinuada.value;

//listaPublicaciones
void addItemListaPublicaciones(Map<String, dynamic> item) {
  _listaPublicaciones.add(item);
}

void cambiarListaPublicaciones(List item) {
  _listaPublicaciones.value = item;
}

void removeItemListaPublicaciones(int index) {
  _listaPublicaciones.removeAt(index);
}

void editItemListaPublicaciones(int index, Map itemEdit) {
  _listaPublicaciones[index] = itemEdit;
}

List get listaPublicaciones => _listaPublicaciones.value; // Obtenemos la lista de publicaciones
}