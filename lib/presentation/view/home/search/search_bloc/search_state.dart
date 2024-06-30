part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();
}

final class SearchInitial extends SearchState {
  @override
  List<Object> get props => [];
}

final class SearchLoadingState extends SearchState {
  @override
  List<Object> get props => [];
}

final class SearchLoadedState extends SearchState {
 final List searchList;
   const SearchLoadedState({required this.searchList});
  @override
  List<Object> get props => [searchList];
}

final class SearchErrorState extends SearchState {
  final String error;

  const SearchErrorState({required this.error});

  @override
  List<Object> get props => [error];
}
