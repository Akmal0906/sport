import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeInitialCubit> {
  HomeCubit() : super(const HomeInitialCubit(isTrue: false));

  changeValue(bool isTure){
    emit(HomeInitialCubit(isTrue: isTure));
  }
}
