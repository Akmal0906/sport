part of 'home_cubit.dart';



final class HomeInitialCubit extends Equatable {
  final bool isTrue;
  const HomeInitialCubit({required this.isTrue});
  @override
  List<Object> get props => [isTrue];
}
