part of 'home_bloc.dart';

sealed class State extends Equatable {
  const State();
  
  @override
  List<Object> get props => [];
}

final class inicial extends State {}
final class Progreso extends State{}
final class Vistas extends State{}
final class error extends State{}
