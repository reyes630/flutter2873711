import 'package:flutter/material.dart';

import '../data/perfilData.dart';



class PerfilPersonal extends StatefulWidget {
  const PerfilPersonal({super.key});

  @override
  State<PerfilPersonal> createState() => _PerfilPersonalState();
}

class _PerfilPersonalState extends State<PerfilPersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Información Personal"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap: true, //Hace que el grid view tome solo el espacio necesario
            physics: NeverScrollableScrollPhysics(), //Desactiva el Scroll interno del grid view
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget> [
              const Card(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15),),
                    child: Image(image: NetworkImage("assets/images/foto.png"), 
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                    ),
                  )
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(PerfilDataList['nombre'],
                          style:const TextStyle(fontSize: 12),
                        ),
                        leading:const Icon(Icons.person),
                      ),
                     Divider(
                        thickness: 1,       // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,          // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,         // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,      // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.blue[500],
                      ),
                      ListTile(
                        title: Text(PerfilDataList['celular'],
                          style:const TextStyle(fontSize: 12),
                        ),
                        leading:const Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.blue[500],
                      ),
                      ListTile(
                        title: Text(PerfilDataList['direccion'],
                          style:const TextStyle(fontSize: 12),
                        ),
                        leading:const Icon(Icons.location_on),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.blue[500],
                      ),
                      ListTile(
                        title: Text(PerfilDataList['github'],
                          style:const TextStyle(fontSize: 12),
                        ),
                        leading:const Icon(Icons.mail),
                      ),
                    ],
                  ),
                ), 
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8), // Espacio entre el título y los contenidos
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            const Text(
                              'Dart',
                              style: TextStyle(fontSize: 11),
                            ),
                            LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 4,
                              color: Colors.blue,
                              backgroundColor: Colors.grey[300],
                            ),
                            const SizedBox(height: 8),

                            const Text(
                              'Flutter',
                              style: TextStyle(fontSize: 11),
                            ),
                            LinearProgressIndicator(
                              value: 0.9,
                              minHeight: 4,
                              color: Colors.blue,
                              backgroundColor: Colors.grey[300],
                            ),
                            const SizedBox(height: 8),

                            const Text(
                              'JavaScript',
                              style: TextStyle(fontSize: 11),
                            ),
                            LinearProgressIndicator(
                              value: 0.9,
                              minHeight: 4,
                              color: Colors.blue,
                              backgroundColor: Colors.grey[300],
                            ),
                            const SizedBox(height: 8),

                            const Text(
                              'PHP',
                              style: TextStyle(fontSize: 11),
                            ),
                            LinearProgressIndicator(
                              value: 0.7,
                              minHeight: 4,
                              color: Colors.blue,
                              backgroundColor: Colors.grey[300],
                            ),
                            const SizedBox(height: 8),

                            const Text(
                              'Python',
                              style: TextStyle(fontSize: 11),
                            ),
                            LinearProgressIndicator(
                              value: 0.9,
                              minHeight: 4,
                              color: Colors.blue,
                              backgroundColor: Colors.grey[300],
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Idiomas',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4), // Espacio entre el título y el subtítulo
                      const Text(
                        'Inglés',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 8), // Espacio entre el subtítulo y el contenido
                      ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const Text(
                            'Reading',
                            style: TextStyle(fontSize: 11),
                          ),
                          LinearProgressIndicator(
                            value: 0.9,
                            minHeight: 4,
                            color: Colors.blue,
                            backgroundColor: Colors.grey[300],
                          ),
                          const SizedBox(height: 8),

                          const Text(
                            'Speaking',
                            style: TextStyle(fontSize: 11),
                          ),
                          LinearProgressIndicator(
                            value: 0.8,
                            minHeight: 4,
                            color: Colors.blue,
                            backgroundColor: Colors.grey[300],
                          ),
                          const SizedBox(height: 8),

                          const Text(
                            'Listening',
                            style: TextStyle(fontSize: 11),
                          ),
                          LinearProgressIndicator(
                            value: 0.7,
                            minHeight: 4,
                            color: Colors.blue,
                            backgroundColor: Colors.grey[300],
                          ),
                          const SizedBox(height: 8),

                          const Text(
                            'Writing',
                            style: TextStyle(fontSize: 11),
                          ),
                          LinearProgressIndicator(
                            value: 0.9,
                            minHeight: 4,
                            color: Colors.blue,
                            backgroundColor: Colors.grey[300],
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              
            ],
            ),
           Card(
            shadowColor:const Color.fromARGB(255, 0, 0, 0),
            elevation: 20,
            margin:const EdgeInsets.all(7),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  PerfilDataList["perfil"],
                  style:const  TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}