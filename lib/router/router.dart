import 'package:auto_route/auto_route.dart';
import 'package:tmdb_example/view/main/main_page.dart';
import 'package:tmdb_example/view/search/search_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: MainPage, initial: true),
    AutoRoute(path: '/search', page: SearchPage),
  ],
)
class $AppRouter {}
