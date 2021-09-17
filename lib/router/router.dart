import 'package:auto_route/auto_route.dart';
import 'package:tmdb_example/view/main/main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[AutoRoute(path: '/', page: MainPage, initial: true)],
)

class $AppRouter {}
