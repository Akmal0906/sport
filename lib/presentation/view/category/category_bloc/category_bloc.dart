import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/data_source/remote_data_source.dart';
import '../../../../domain/models/category/category_model.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final RemouteCategory remouteCategory;
  CategoryBloc({required this.remouteCategory}) : super(CategoryInitial()) {
    on<TakeCategoryEvent>(_takeCategory);
  }
  _takeCategory(TakeCategoryEvent event,Emitter<CategoryState>emit)async{
    emit(CategoryLoadingState());
    final List categoryList=await remouteCategory.getCategoryList(event.id);
    emit(CategoryLoadedState(categoryList: categoryList));
  }
}
