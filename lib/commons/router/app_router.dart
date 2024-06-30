import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/models/search/search_model.dart';
import '../../domain/models/tournament_specific_model/tour_model.dart';
import '../../presentation/view/category/category_page.dart';
import '../../presentation/view/combain_page.dart';
import '../../presentation/view/favorites/favorites_page.dart';
import '../../presentation/view/home/detail/detail_page.dart';
import '../../presentation/view/home/home_page.dart';
import '../../presentation/view/home/home_widget/viewall_page.dart';
import '../../presentation/view/home/search/player_page.dart';
import '../../presentation/view/home/search/serach_page.dart';
import '../../splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page,initial: true),
        AutoRoute(page: CombainRoute.page,
            children: [
          AutoRoute(page: HomeRoute.page,
              ),
          AutoRoute(page: CategoryRoute.page),
          AutoRoute(page: FavoritesRoute.page),

        ]),
    AutoRoute(page: DetailRoute.page,),
    AutoRoute(page: ViewAllRoute.page,),
    AutoRoute(page: SerachRoute.page,),
    AutoRoute(page: PlayerRoute.page,),

  ];
}
