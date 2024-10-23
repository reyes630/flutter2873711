import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Sítios Turisticos",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sítios Turisticos"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body:
            ListView.builder(
            itemCount: sitiosTuristicos.length,
            itemBuilder: (BuildContext context, int index)  {
              return Card(
                color: const Color.fromARGB(255, 251, 243, 153),
                shadowColor: const Color.fromARGB(255, 10, 225, 17),
                elevation: 5,
                margin: const EdgeInsets.all(5),
                child: ListTile(
                  title: Text(sitiosTuristicos[index]),
                  subtitle: Text("Sitio Popular #${index + 1}"),
                  leading: const Icon(Icons.location_on),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // print("Tap sobre el sisitio Turistico ${sitiosTuristicos[index]}");
                    showDialog (
                      context: context,
                      builder: (BuildContext context){
                      return AlertDialog( 
                        title: Text("Sitio Turistico N° ${index+1}"),
                        content: Text(sitiosTuristicos[index]),
                        actions: [
                          TextButton(
                            onPressed: (){
                            Navigator.of (context).pop();
                          }, 
                          child: const Text("Cerrar"))
                        ],
                      );
                      },
                      );
                  },
                ),
              );
            },
            ),

            /* ListView.separated(
              itemCount: sitiosTuristicos.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(sitiosTuristicos[index]),
                  subtitle: Text("Sitio Popular #${index + 1}"),
                  leading: const Icon(Icons.location_on),
                );
              },
            ), */
      ),
    );
  }
}

   List<String> sitiosTuristicos = [
    "Torre Eiffel, Francia",
    "Gran Muralla, China",
    "Coliseo, Italia",
    "Taj Mahal, India",
    "Machu Picchu, Perú",
    "Statue of Liberty, EE. UU.",
    "Santorini, Grecia",
    "Stonehenge, Reino Unido",
    "Sagrada Familia, España",
    "Christ the Redeemer, Brasil",
    "Big Ben, Reino Unido",
    "Burj Khalifa, Dubái",
    "Pyramids of Giza, Egipto",
    "Acropolis, Grecia",
    "Petra, Jordania",
    "Angkor Wat, Camboya",
    "Sydney Opera House, Australia",
    "Niagara Falls, Canadá/EE. UU.",
    "Grand Canyon, EE. UU.",
    "Mount Fuji, Japón",
    "Louvre Museum, Francia",
    "Palace of Versailles, Francia",
    "Hagia Sophia, Turquía",
    "Red Square, Rusia",
    "Yellowstone National Park, EE. UU.",
    "Forbidden City, China",
    "Barcelona, España",
    "Venice, Italia",
    "Golden Gate Bridge, EE. UU.",
    "Galapagos Islands, Ecuador",
    "Mount Everest, Nepal",
    "Table Mountain, Sudáfrica",
    "Cappadocia, Turquía",
    "Banaue Rice Terraces, Filipinas",
    "Fjords, Noruega",
    "Vatican City, Ciudad del Vaticano",
    "Stone Town, Zanzíbar",
    "Alhambra, España",
    "Masai Mara, Kenia",
    "Mount Kilimanjaro, Tanzania",
    "Giza Pyramids, Egipto",
    "Bora Bora, Polinesia Francesa",
    "Halong Bay, Vietnam",
    "Great Barrier Reef, Australia",
    "Milan Cathedral, Italia",
    "Reykjavik, Islandia",
    "Prague Castle, República Checa",
    "Kilimanjaro National Park, Tanzania",
    "Old City of Jerusalem, Israel",
    "Lofoten Islands, Noruega",
    "Palace of Westminster, Reino Unido",
    "Salar de Uyuni, Bolivia",
    "Giant's Causeway, Irlanda",
    "Bhutan, Himalayas",
    "Denali National Park, EE. UU.",
    "Ayers Rock, Australia",
    "St. Basil's Cathedral, Rusia",
    "Neuschwanstein Castle, Alemania",
    "Victoria Falls, Zambia/Zimbabwe",
    "Siena, Italia",
    "Chichen Itza, México",
    "Grand Palace, Tailandia",
    "Reims Cathedral, Francia",
    "Mount Rushmore, EE. UU.",
    "Uluru, Australia",
    "Acadia National Park, EE. UU.",
    "Yellowstone, EE. UU.",
    "Cinque Terre, Italia",
    "Meteora, Grecia",
    "Patagonia, Argentina/Chile",
    "Zhangjiajie National Forest Park, China",
    "Yosemite National Park, EE. UU.",
    "Big Sur, EE. UU.",
    "Kruger National Park, Sudáfrica",
    "Cartagena, Colombia",               
    "Bogotá, Colombia",                  
    "Medellín, Colombia",                
    "Parque Nacional Tayrona, Colombia", 
    "Eje cafetero, Colombia",            
    "Santuario de Las Lajas, Colombia",  
    "Caño Cristales, Colombia", 
    "Torre de Pisa, Italia",
    "Canal de Panamá, Panamá",
    "Santuario de Lourdes, Francia",
    "Glen Canyon, EE. UU.",
    "Isla de Pascua, Chile",
    "Castillo de Chambord, Francia",
    "Cascada de Iguazú, Argentina/Brasil",
    "Montañas Rocosas, Canadá/EE. UU.",
    "Templo de Karnak, Egipto",
    "Mercado de Marrakech, Marruecos",
     "Catedral de Notre-Dame, Francia",
    "Parque Nacional Banff, Canadá",
    "Mercado de Borough, Reino Unido",
    "Isla Bora Bora, Polinesia Francesa",
    "Catedral de San Basilio, Rusia",
    "Ruinas de Machu Picchu, Perú",
    "Palacio de Buckingham, Reino Unido",
    "Cataratas del Niágara, Canadá/EE. UU.",
    "Templo de Angkor Wat, Camboya",
    "Parque Nacional Torres del Paine, Chile"         
  ];