part of 'home_bloc.dart';

sealed class Event extends Equatable {
  const Event();

  @override
  List<Object> get props => [];
}

final class HomeSearchPressed extends Event{}