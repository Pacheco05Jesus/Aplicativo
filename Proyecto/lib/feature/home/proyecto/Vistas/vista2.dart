import 'package:flutter/material.dart';

class vista2 extends StatelessWidget {
  const vista2({
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
            imageUrl: 'https://ortizo.com.co/cdn/shop/products/BAJOELECTRICO.png?v=1742397116',
            title: 'Fender AffitySeries Bass',
            description: 'Precio: 2.500.000',
          ),
          const SizedBox(height: 16),
          roomCard(
            imageUrl: 'https://yamaha.vtexassets.com/arquivos/ids/158835-800-auto?v=637816616695330000&width=800&height=auto&aspect=true',
            title: 'Yamaha 5G',
            description: 'Precio: 2.000.000',
          ),
          const SizedBox(height: 16),
          roomCard(
            imageUrl: 'https://www.electronicajaponesa.com/wp-content/uploads/2024/03/SAB66.jpg',
            title: 'Ibanez Xp6',
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
