part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

final class InitialHomeEvent extends HomeEvent{
  @override
  List<Object?> get props => [];

}
