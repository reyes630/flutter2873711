import 'package:curriculum_vitae_v1_adso/experienciaLaboral/principalExperienciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:curriculum_vitae_v1_adso/perfilPersonal/perfilPersonal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Obx(() =>  Scaffold(
      appBar: AppBar(
        title: Center(child: Text(miControlador.Titulo)),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      body: Center(
        child: Image(image: NetworkImage("assets/images/logoReyes.png")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage("assets/images/foto.png"),
                ),
              ),
            ),
            Divider(color: Colors.blue, height: 2,),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Curriculum Vitae V2 - ADSO");
                Navigator.pop(context);
              },
            ),
            
            ListTile(
              title: Text("Información Personal"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Información Personal");
                Get.to(PerfilPersonal());
              },
            ),
            
            ListTile(
              title: Text("Educación Formal"),
              leading: Icon(Icons.school),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Educación Formal");
                Navigator.pop(context);
                Get.defaultDialog(
                  title: "Alerta",
                  middleText: "Esta sección pronto será publlicada...",
                  onConfirm: () {
                    
                  },
                  onCancel: () {
                    
                  },
                );
              },
            ),
            
            ListTile(
              title: Text("Formación Continuada"),
              leading: Icon(Icons.book),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Formación Continuada");
                Get.snackbar(
                  "Atención!", "Esta sección no esta disponible",
                  backgroundColor: Colors.red[300],
                  colorText: Colors.white,
                  icon: Icon(Icons.dangerous)
                  );
              },
            ),
            
            ListTile(
              title: Text("Publicaciones"),
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () { 
                miControlador.cambiarTitulo("Publicaciones");
                Navigator.pop(context);
              },
            ),
            
            ListTile(
              title: Text("Experiencia Laboral"),
              leading: Icon(Icons.work_outline),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Experiencia Laboral");
                Navigator.pop(context);
                Get.to(PrincipalexperienciaLaboral());
              },
            ),
            
            ListTile(
              title: Text("Referencias"),
              leading: Icon(Icons.people),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Referencias");
                Navigator.pop(context);
              },
            ),
            
            ListTile(
              title: Text("Acerca de"),
              leading: Icon(Icons.people),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Acerca de");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ));
  }
}