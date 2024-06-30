import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'carousel_state.dart';

class CarouselCubit extends Cubit<CarouselInitial> {
  CarouselCubit() : super(const CarouselInitial(index: 0));
  changeIndex(int index){
    print('CarouselCubit changeIndex $index');
    emit(CarouselInitial(index: index));
  }
}
