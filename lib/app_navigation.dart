import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mtg_deck_creator/screens/bottom_tab_screens/bottom_tabs_nested_navigation.dart';
import 'package:mtg_deck_creator/screens/bottom_tab_screens/home_screen.dart';
import 'package:mtg_deck_creator/screens/bottom_tab_screens/photo_screen.dart';
import 'package:mtg_deck_creator/screens/bottom_tab_screens/setting_screen.dart';
import 'package:mtg_deck_creator/screens/card_results_screen.dart';

class AppNavigation {
  AppNavigation._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellBottomTabs');
  static final _shellNavigatorCamaraKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellBottomTabs');
  static final _shellNavigatorSettingKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellBottomTabs');

  static final router = GoRouter(
      initialLocation: '/homeScreen',
      navigatorKey: _rootNavigatorKey,
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return BottomTabsNestedNavigation(
                  navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorHomeKey,
                  routes: [
                    GoRoute(
                      name: HomeScreen.id,
                      path: '/homeScreen',
                      pageBuilder: (context, state) =>
                          NoTransitionPage(child: HomeScreen()),
                    )
                  ]),
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorCamaraKey,
                  routes: [
                    GoRoute(
                      name: PhotoScreen.id,
                      path: '/photoScreen',
                      pageBuilder: (context, state) =>
                          NoTransitionPage(child: PhotoScreen()),
                    )
                  ]),
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorSettingKey,
                  routes: [
                    GoRoute(
                      name: SettingScreen.id,
                      path: '/settingScreen',
                      pageBuilder: (context, state) =>
                          NoTransitionPage(child: SettingScreen()),
                    )
                  ])
            ]),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          name: CardResultsScreen.id,
          path: '/cardResultsScreen',
          builder: (context, state) {
            final cardText = state.extra! as String;
            return CardResultsScreen(cardName: cardText);
          },
        )
      ]);
}
