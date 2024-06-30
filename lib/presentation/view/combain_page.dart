import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport/commons/router/app_router.dart';

@RoutePage()
class CombainPage extends StatelessWidget {
  const CombainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: AutoTabsScaffold(

        routes: const [
          HomeRoute(),
          CategoryRoute(),
          FavoritesRoute(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) {
          return BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black54,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                // activeIcon: Assets.icons.selectedHome.svg(),
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                // activeIcon: Assets.icons.selectedBookmark.svg(),
                icon: Icon(Icons.list_alt),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                //  activeIcon: Assets.icons.selectedInvestment.svg(),
                icon: Icon(Icons.favorite_border),
                label: 'Favorites',
              ),
            ],
          );
        },
      )),
    );
  }
}
