part of 'category_bloc.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();
}

final class CategoryInitial extends CategoryState {
  @override
  List<Object> get props => [];
}

final class CategoryLoadingState extends CategoryState {
  @override
  List<Object> get props => [];
}

final class CategoryLoadedState extends CategoryState {
  final List categoryList;
  const CategoryLoadedState({required this.categoryList});
  @override
  List<Object> get props => [categoryList];
}

final class CategoryErrorState extends CategoryState {
  final String error;

  const CategoryErrorState({required this.error});

  @override
  List<Object> get props => [error];
}
