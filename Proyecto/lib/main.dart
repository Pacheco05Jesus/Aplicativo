import 'package:examen/feature/home/proyecto/Vistas/vista2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:examen/feature/home/proyecto/bloc/home_bloc.dart' as home_bloc;

import 'feature/home/proyecto/Vistas/carga.dart';
import 'feature/home/proyecto/Vistas/error.dart';
import 'feature/home/proyecto/Vistas/inicial.dart';
import 'feature/home/proyecto/Vistas/vista1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => home_bloc.HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<home_bloc.HomeBloc, home_bloc.State>(
          builder: (context, state) {
            if (state is home_bloc.Vistas) {
              return vista2();
            } else if (state is home_bloc.Progreso) {
              return Carga();
            } else if (state is home_bloc.error) {
              return Error(); // Asegúrate de que esta clase exista con ese nombre
            }
            return const Inicial();
          },
        ),
      ),
    );
  }
}


