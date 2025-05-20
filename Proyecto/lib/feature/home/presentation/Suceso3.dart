import 'package:flutter/material.dart';

class Succes extends StatelessWidget {
  const Succes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bajos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          roomCard(
            imageUrl: 'https://yamaha.vtexassets.com/arquivos/ids/158838/C70000000000-1.jpg?v=637816616709130000',
            title: 'Guitarra Acustica',
            description: 'Precio: 1.500.000',
          ),
          const SizedBox(height: 16),
          roomCard(
            imageUrl: 'https://m.media-amazon.com/images/I/31xu12J6SuL._SR290,290_.jpg',
            title: 'Yamaha Guitar Electric',
            description: 'Precio: 1.300.000',
          ),
          const SizedBox(height: 16),
          roomCard(
            imageUrl: 'https://www.ardemadrid.com/14158-large_default/ltd-ec-256-fm-dbsb-zurdo.jpg',
            title: 'LTD_ 256',
            description: 'Precio 2.000.000',
          ),
        ],
      ),
    );
  }


  Widget roomCard({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),

          // Nombre y descripción
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
