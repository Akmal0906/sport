import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport/commons/other/colors.dart';
import 'package:sport/commons/other/lists.dart';
import 'package:sport/commons/other/strings.dart';
import 'package:sport/commons/router/app_router.dart';
import 'package:sport/commons/style/app_style.dart';
import 'package:sport/presentation/view/home/carousel/carousel_cubit/carousel_cubit.dart';
import 'package:sport/presentation/view/home/carousel/carousel_widget.dart';
import 'package:sport/presentation/view/home/home_cubit/home_cubit.dart';

import 'home_bloc/home_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        resizeToAvoidBottomInset: true,
        body: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is InitialHomeEvent) {
              return const SizedBox.shrink();
            } else if (state is LoadingHomeState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LoadedHomeState) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 17, right: 17, bottom: 24, top: 12),
                      child: SizedBox(
                        height: 56,
                        width: size.width,
                        child: TextField(
                          onTap: (){
                
                            AutoRouter.of(context).push(SerachRoute());
                          },
                          controller: controller,
                          decoration: InputDecoration(
                            hintText: 'Player Name',
                            hintStyle: customStyle.copyWith(color: Colors.black45),
                            prefixIcon:
                            Icon(Icons.search),
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
                    BlocProvider(
                      create: (context) => CarouselCubit(),
                      child: const CarouselWidget(),
                    ),
                    Column(
                      children: [
                
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Strings.today,
                                style: customStyle.copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 17),
                              ),
                              TextButton(
                                  onPressed: () {
                                    AutoRouter.of(context).push(ViewAllRoute(
                                        tourModelList: state.tourModelList,
                                        imageList: todayImageList));
                                  },
                                  child: Text(
                                    '${Strings.seeAll} >',
                                    style: customStyle.copyWith(
                                        color: Colors.red, fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.2,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: todayImageList.length - 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 10, top: 13, bottom: 11),
                                child: SizedBox(
                                  width: size.width * 0.9,
                                  child: ColoredBox(
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image(
                                          image: AssetImage(todayImageList[index]),
                                          fit: BoxFit.cover,
                                          height: size.height * 0.15,
                                          width: size.width * 0.37,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ColoredBox(
                                                  color: Colors.black12,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(3.0),
                                                    child: Text(
                                                      'Highlights',
                                                      style: customStyle.copyWith(
                                                          fontSize: 13,
                                                          letterSpacing: 1,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  )),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Text(
                                                state.tourModelList[index].name,
                                                style: customStyle.copyWith(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                                maxLines: 3,
                                              ),
                                              Text(
                                                state.tourModelList[index].slug,
                                                style: customStyle.copyWith(
                                                    color: Colors.black87,
                                                    letterSpacing: 1,
                                                    overflow: TextOverflow.fade),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Strings.allteam,
                                style: customStyle.copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 17),
                              ),
                              TextButton(
                                  onPressed: () {
                                    AutoRouter.of(context).push(ViewAllRoute(
                                        imageList: teamImageList));
                                  },
                                  child: Text(
                                    '${Strings.seeAll} >',
                                    style: customStyle.copyWith(
                                        color: Colors.red, fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.17,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: teamImageList.length - 1,
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                height: 120,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, right: 15),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: ColoredBox(
                                          color: AppColors.secondBackColor,
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Image(
                                                image: AssetImage(
                                                    teamImageList[index]),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Team ${index + 1}',
                                        style: customStyle.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17,
                                            overflow: TextOverflow.ellipsis),
                                        maxLines: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            } else if (state is ErrorHomeState) {
              return Center(
                child: Text(state.error),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
