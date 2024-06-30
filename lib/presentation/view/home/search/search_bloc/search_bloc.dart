import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../data/data_source/remote_data_source.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final RemouteSearch remouteSearch;
  SearchBloc(this.remouteSearch) : super(SearchInitial()) {
    on<SearchPlayerEvent>(_searchPlayer);
  }
  _searchPlayer(SearchPlayerEvent event,Emitter<SearchState>emit)async{
    emit(SearchLoadingState());
    final List searchList=await remouteSearch.getSearchList(event.playerName);
    searchList.isEmpty? emit(const SearchErrorState(error: 'Did not found')):emit(SearchLoadedState(searchList: searchList));
  }
}
