import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport/data/api_config/api_client.dart';
import 'package:sport/data/data_source/remote_data_source.dart';
import 'package:sport/presentation/view/category/category_bloc/category_bloc.dart';
import 'package:sport/presentation/view/home/home_bloc/home_bloc.dart';
import 'package:sport/presentation/view/home/home_cubit/home_cubit.dart';
import 'package:sport/presentation/view/home/search/search_bloc/search_bloc.dart';

import 'commons/router/app_router.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>HomeBloc(remouteTournament: RemouteTournamentImple(apiClient: ApiClient(Dio())))..add(InitialHomeEvent())),
        BlocProvider(create: (context)=>CategoryBloc(remouteCategory: RemouteCategoryImple(apiClient: ApiClient(Dio())))..add(const TakeCategoryEvent(id: 0))),
        BlocProvider(create: (context)=>SearchBloc(RemouteSearchImple(ApiClient(Dio())))),

        BlocProvider(create: (context)=>HomeCubit()),

      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      
      ),
    );
  }
}


