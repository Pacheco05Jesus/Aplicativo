import 'package:examen/feature/home/proyecto/Vistas/vista2.dart';
import 'package:examen/feature/home/proyecto/bloc/home_bloc.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://png.pngtree.com/background/20230615/original/pngtree-an-illustration-of-various-musical-instruments-picture-image_3541987.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'JP MUSIC',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [Shadow(blurRadius: 5, color: Colors.white)],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController, // <- capturador de texto
                        decoration: InputDecoration(
                          hintText: 'Buscar...',
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        final homeBloc = BlocProvider.of<HomeBloc>(context);
                        final textoBuscado = _searchController.text;
                        if (textoBuscado == "Bajos") {
                          homeBloc.add(HomeSearchPressed());
                        }else if (textoBuscado == "Pianos") {
                         
                        }

                        print('Texto buscado: $textoBuscado'); // <- aquí tienes el texto
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
