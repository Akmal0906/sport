import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport/commons/other/lists.dart';
import 'package:sport/commons/router/app_router.dart';
import 'package:sport/presentation/view/home/search/search_bloc/search_bloc.dart';

import '../../../../commons/style/app_style.dart';

@RoutePage()
class SerachPage extends StatefulWidget {
  const SerachPage({super.key});

  @override
  State<SerachPage> createState() => _SerachPageState();
}

class _SerachPageState extends State<SerachPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(bottom: 12,top: 11),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(
                  left: 13.0, right: 13, top: 17, bottom: 31),
              child: SizedBox(
                height: 56,
                width: size.width,
                child: TextField(

                  onSubmitted: (String str) {


                    context.read<SearchBloc>().add(SearchPlayerEvent(playerName: str));

                  },
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Player Name',
                    hintStyle: customStyle.copyWith(color: Colors.black45),
                    prefix: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      onPressed: () {
                        AutoRouter.of(context).popUntilRoot();
                      },
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            color: Colors.black, width: 1)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        )),
                  ),
                ),
              ),
            ),
            BlocConsumer<SearchBloc, SearchState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                if (state is SearchInitial) {
                  return Center(
                    child: Text('did yet search', style: customStyle,),
                  );
                } else if (state is SearchLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is SearchLoadedState) {
                  return GridView.builder(
                    physics:const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: state.searchList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1/1.3,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return
                      GestureDetector(
                        onTap: (){
                          AutoRouter.of(context).push(PlayerRoute(searchModel: state.searchList[index], imageUrl: playersImage[index>5?0:index]));
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      playersImage[index > 5 ? 1 : index]),
                                 minRadius: 50,
                                  maxRadius: 75,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                child: Text(
                                  state.searchList[index].name, style: customStyle,),
                              ),
                            ],
                          ),
                        ),
                      );
                    },

                  );
                } else if (state is SearchErrorState) {
                  return Center(
                    child: Text(state.error, style: customStyle,),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
