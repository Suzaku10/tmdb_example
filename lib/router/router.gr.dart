// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../view/main/main_page.dart' as _i3;
import '../view/search/search_page.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MainRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.MainPage();
        }),
    SearchRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SearchPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MainRoute.name, path: '/'),
        _i1.RouteConfig(SearchRoute.name, path: '/search')
      ];
}

class MainRoute extends _i1.PageRouteInfo {
  const MainRoute() : super(name, path: '/');

  static const String name = 'MainRoute';
}

class SearchRoute extends _i1.PageRouteInfo {
  const SearchRoute() : super(name, path: '/search');

  static const String name = 'SearchRoute';
}
