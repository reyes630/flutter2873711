import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Información Personal",
      home:Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Información Personal")),
          backgroundColor: const Color(0xFF2196F3),
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-businessman-user-avatar-wearing-suit-with-red-tie-png-image_5809521.png"),
                ),
                Image(
                  image:  NetworkImage("images/image.png"),
                  height: 400,
                ),
                ListTile(
                  title: Text("Esteban"),
                  subtitle: Text("Nombre"),
                  leading: Icon(Icons.co_present),
                ),
                ListTile(
                  title: Text("Reyes Agudelo"),
                  subtitle: Text("Apellido"),
                  leading: Icon(Icons.co_present_outlined),
                ),
                ListTile(
                  title: Text("3127591649"),
                  subtitle: Text("Telefono"),
                  leading: Icon(Icons.call_rounded),
                ),
                ListTile(
                  title: Text("Km 10 Via Magdalena"),
                  subtitle: Text("Dirección"),
                  leading: Icon(Icons.location_on),
                ),
                ListTile(
                  title: Text("SENA"),
                  subtitle: Text("Empresa"),
                  leading: Icon(Icons.location_city),
                ),
                ListTile(
                  title: Text("17001"),
                  subtitle: Text("Código Postal"),
                  leading: Icon(Icons.local_post_office_rounded),
                ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}