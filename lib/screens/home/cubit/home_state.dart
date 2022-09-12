part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeInProgress extends HomeState {}

class HomeFailure extends HomeState {
  final String message;
  const HomeFailure(this.message);
}

class HomeSuccess extends HomeState {
  final List<CardModel> cards;
  const HomeSuccess(this.cards);

  @override
  List<Object> get props => [cards];
}
