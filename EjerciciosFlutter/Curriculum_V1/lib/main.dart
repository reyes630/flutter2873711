import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Curriculum ERA",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Curriculum Esteban Reyes")),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                // FOTO
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage("images/foto.png"),
                ),
                // Divider para hacer una linea 
                Divider(
                  color: Color.fromARGB(255, 0, 0, 0),
                  thickness: 1.5,
                ),
                
                // Información Personal
                Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.account_circle_outlined),
                    title: Text("Información Personal"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                // Formación Académica
                Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.co_present_outlined),
                    title: Text("Formación Académica"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                // Certificación
                Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.local_post_office_rounded),
                    title: Text("Certificaciones y Cursos"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                // Experiencia
                Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(255, 0, 41, 206),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.business_center_rounded),
                    title: Text("Experiencia Laboral"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                // Habilidades
                Card(
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
                Card(
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
                Card(
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
                Card(
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
      ),
    );
  }
}
