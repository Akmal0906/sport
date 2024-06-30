// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryPage(),
      );
    },
    CombainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CombainPage(),
      );
    },
    DetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailPage(),
      );
    },
    FavoritesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritesPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    PlayerRoute.name: (routeData) {
      final args = routeData.argsAs<PlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PlayerPage(
          key: args.key,
          searchModel: args.searchModel,
          imageUrl: args.imageUrl,
        ),
      );
    },
    SerachRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SerachPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    ViewAllRoute.name: (routeData) {
      final args = routeData.argsAs<ViewAllRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ViewAllPage(
          key: args.key,
          tourModelList: args.tourModelList,
          imageList: args.imageList,
        ),
      );
    },
  };
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute({List<PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CombainPage]
class CombainRoute extends PageRouteInfo<void> {
  const CombainRoute({List<PageRouteInfo>? children})
      : super(
          CombainRoute.name,
          initialChildren: children,
        );

  static const String name = 'CombainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailPage]
class DetailRoute extends PageRouteInfo<void> {
  const DetailRoute({List<PageRouteInfo>? children})
      : super(
          DetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoritesPage]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlayerPage]
class PlayerRoute extends PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    Key? key,
    required SearchModel searchModel,
    required String imageUrl,
    List<PageRouteInfo>? children,
  }) : super(
          PlayerRoute.name,
          args: PlayerRouteArgs(
            key: key,
            searchModel: searchModel,
            imageUrl: imageUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayerRoute';

  static const PageInfo<PlayerRouteArgs> page = PageInfo<PlayerRouteArgs>(name);
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    this.key,
    required this.searchModel,
    required this.imageUrl,
  });

  final Key? key;

  final SearchModel searchModel;

  final String imageUrl;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key, searchModel: $searchModel, imageUrl: $imageUrl}';
  }
}

/// generated route for
/// [SerachPage]
class SerachRoute extends PageRouteInfo<void> {
  const SerachRoute({List<PageRouteInfo>? children})
      : super(
          SerachRoute.name,
          initialChildren: children,
        );

  static const String name = 'SerachRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ViewAllPage]
class ViewAllRoute extends PageRouteInfo<ViewAllRouteArgs> {
  ViewAllRoute({
    Key? key,
    List<dynamic>? tourModelList,
    required List<String> imageList,
    List<PageRouteInfo>? children,
  }) : super(
          ViewAllRoute.name,
          args: ViewAllRouteArgs(
            key: key,
            tourModelList: tourModelList,
            imageList: imageList,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewAllRoute';

  static const PageInfo<ViewAllRouteArgs> page =
      PageInfo<ViewAllRouteArgs>(name);
}

class ViewAllRouteArgs {
  const ViewAllRouteArgs({
    this.key,
    this.tourModelList,
    required this.imageList,
  });

  final Key? key;

  final List<dynamic>? tourModelList;

  final List<String> imageList;

  @override
  String toString() {
    return 'ViewAllRouteArgs{key: $key, tourModelList: $tourModelList, imageList: $imageList}';
  }
}
