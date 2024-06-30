import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/data_source/remote_data_source.dart';
import '../../../../domain/models/tournament_specific_model/tour_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RemouteTournament remouteTournament;
  HomeBloc({required this.remouteTournament}) : super(HomeInitial()) {
    on<InitialHomeEvent>(_initialFunc);


  }

  void _initialFunc(InitialHomeEvent event,Emitter<HomeState> emit)async{
    emit(LoadingHomeState());
    final List tourModelList=await remouteTournament.getDateTournaments();
print('HomeBloc ==== $tourModelList');
    emit(LoadedHomeState(tourModelList: tourModelList));

  }
}
