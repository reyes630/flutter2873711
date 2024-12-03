import 'package:flutter/material.dart';
import 'data/certificadosCursosData.dart';
import 'data/experienciaLaboralData.dart';
import 'data/formacionFormalData.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Curriculum Esteban Reyes ")),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                // FOTO
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage("images/foto.png"),
                  ),
                ),
                // Divider para hacer una linea 
                const Divider(
                  color: Color.fromARGB(255, 0, 0, 0),),
                
                // Información Personal
                Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: const Icon(Icons.account_circle_outlined),
                    title: const Text("Información Personal"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      
                    },

                  ),
                ),

                // Formación Académica
                Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: const Icon(Icons.co_present_outlined),
                    title: const Text("Formación Académica"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context, 
                        builder: (context) {
                        return Scaffold(
                          
                          appBar: AppBar(
                            title: const Text("Formación Académica"),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          body:ListView.separated(
                            itemCount: formacionAcademicaLista.length,
                            separatorBuilder: (BuildContext context, int index) {
                              return Divider();
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                title: Text(formacionAcademicaLista[index]["titulo"]),
                                subtitle: Text(
                                  formacionAcademicaLista[index]["tipoEstudio"],
                                  style: TextStyle(color: formacionAcademicaLista[index]["color"]) 
                                  ),
                                  leading: Text(formacionAcademicaLista[index]["anioFinalizacion"].toString()),
                                  
                                );
                        
                            },
                          ),
                        );
                      });
                    },
                  ),
                ),

                // Certificación
                Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: const Icon(Icons.local_post_office_rounded),
                    title: const Text("Certificaciones y Cursos"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Scaffold(
                            appBar: AppBar(
                              title: const Text('Certificados y Cursos'),
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            body: ListView.separated(
                              itemCount: certificadosCursos .length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Divider();
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(
                                      certificadosCursos[index]['titulo']),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        certificadosCursos[index]
                                            ['categoria'],
                                        style: TextStyle(
                                          color: certificadosCursos[index]
                                              ['colorCategoria'],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                          height: 5), // Espaciado entre textos
                                      Text(
                                        certificadosCursos[index]
                                            ['descripcion'],
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  leading: Text(
                                    certificadosCursos[index]
                                            ['anioRealizado']
                                        .toString(),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),

                // Experiencia
                Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: const Icon(Icons.business_center_rounded),
                    title: const Text("Experiencia Laboral"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Scaffold(
                            appBar: AppBar(
                              title: const Text('Experiencia Laboral'),
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            body: ListView.separated(
                              itemCount: experienciaLaboralLista.length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Divider();
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(
                                      experienciaLaboralLista[index]['titulo']),
                                  trailing: Icon(experienciaLaboralLista[index]
                                      ['iconoCategoria']),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        experienciaLaboralLista[index]
                                            ['categoria'],
                                        style: TextStyle(
                                          color: experienciaLaboralLista[index]
                                              ['colorCategoria'],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                          height: 4), // Espaciado entre textos
                                      Text(
                                        experienciaLaboralLista[index]['funciones'],
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  leading: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Inicio: ${experienciaLaboralLista[index]['fechaInicio']}',
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        'Fin: ${experienciaLaboralLista[index]['fechaFin']}',
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),

                // Habilidades
                const Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.category_rounded),
                    title: Text("Habilidades"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                // Proyectos
                const Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.stars_rounded),
                    title: Text("Proyectos Destacados"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                // Idiomas
                const Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.abc_outlined),
                    title: Text("Idiomas"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                // Referencias
                const Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.diversity_3_rounded),
                    title: Text("Referencias Personales"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}