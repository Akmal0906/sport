part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

final class LoadingHomeState extends HomeState {
  @override
  List<Object> get props => [];
}

final class LoadedHomeState extends HomeState {
  final List tourModelList;

  const LoadedHomeState({required this.tourModelList});

  @override
  List<Object> get props => [tourModelList];
}

final class ErrorHomeState extends HomeState{
  final String error;
  const ErrorHomeState({required this.error});
  @override
  List<Object> get props => [error];
}
