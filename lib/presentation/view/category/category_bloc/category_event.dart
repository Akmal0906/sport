part of 'category_bloc.dart';

sealed class CategoryEvent extends Equatable {
  const CategoryEvent();
}

final class TakeCategoryEvent extends CategoryEvent{
  final int id;
  const TakeCategoryEvent({required this.id});
  @override
  List<Object> get props => [];
}
