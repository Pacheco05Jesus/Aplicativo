import 'package:flutter/material.dart';

class Succes extends StatelessWidget {
  const Succes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pianos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          roomCard(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyqy_Wz2dzRh_Wnlr10Y-4ofe5e7MOXgTsmg&s',
            title: 'Nord Stage 3',
            description: 'Precio: 5.000.000',
          ),
          const SizedBox(height: 16),
          roomCard(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7_bf2AJFhwzVCMZHuFsLGltMPIY9v-vgZRw&s',
            title: 'Yamaha MX 88',
            description: 'Precio 4.500.000',
          ),
          const SizedBox(height: 16),
          roomCard(
            imageUrl: 'https://gamamusic.com/cdn/shop/files/XPS30-00.jpg?v=1690317897',
            title: 'Roland Xps_30',
            description: 'Precio 4.000.000',
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
