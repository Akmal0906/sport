import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport/commons/other/colors.dart';
import 'package:sport/commons/other/lists.dart';
import 'package:sport/commons/style/app_style.dart';
import 'package:sport/presentation/view/category/category_bloc/category_bloc.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categoryNameList.length,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,

            bottom: TabBar(
                onTap: (index) {
                  context.read<CategoryBloc>().add(TakeCategoryEvent(id: index));
                },
                tabs: List.generate(
                    categoryNameList.length,
                    (int index) => Tab(
                          text: categoryNameList[index],
                        )).toList()),
          ),
          body: TabBarView(
            children: List.generate(
                categoryNameList.length,
                (int index) => BlocConsumer<CategoryBloc, CategoryState>(
                  listener: (BuildContext context, Object? state) {},
                      builder: (BuildContext context, state) {
                    if(state is CategoryInitial){
                      return Center(
                        child: Text('Please Waiting',style: customStyle,),
                      );
                    }else if(state is CategoryLoadingState){
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }else if(state is CategoryLoadedState){
                      return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: state.categoryList.length,
                        itemBuilder: (BuildContext context, int index) {

                          return  Padding(padding:const EdgeInsets.only(left: 8,top: 13,right: 8,bottom: 13),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                          child: ColoredBox(
                          color: AppColors.secondBackColor,
                          child:Padding(
                            padding: const EdgeInsets.all(21.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(image: AssetImage(teamImageList[index>5?1:index]),fit: BoxFit.cover,height: 54,width: 56,),
                                    const SizedBox(width: 12,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(state.categoryList[index].name,style: customStyle,),
                                        const SizedBox(height: 5,),
                                        Text(state.categoryList[index].flag),
                                      ],
                                    ),

                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(state.categoryList[index].sport.name,style: customStyle,),
                                    const SizedBox(height: 5,),
                                    Text(state.categoryList[index].priority.toString(),style: customStyle,),
                                  ],
                                )
                              ],
                            ),
                          ) ,
                          ),
                          ),
                          );
                        },

                      );
                    }else if(state is CategoryErrorState){
                      return Center(
                        child: Text(state.error,style: customStyle,),
                      );
                    }
                    return const SizedBox.shrink();
                      },

                    )).toList(),
          ),
        ),
      ),
    );
  }
}
