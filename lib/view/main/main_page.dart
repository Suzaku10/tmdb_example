import 'package:flutter/material.dart';
import 'package:tmdb_example/model/local/item_menu.dart';
import 'package:tmdb_example/view/component/menu_bottom_widget.dart';
import 'package:tmdb_example/view/movies/movies_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MenuBottom _currentTab = MenuBottom.MOVIES;
  Map<MenuBottom, Widget> _navigatorPage = {};

  @override
  void initState() {
    super.initState();
    _navigatorPage = _navigatorPage = {
      MenuBottom.MOVIES: MoviesPage(),
      MenuBottom.TV: Container(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Stack(children: <Widget>[
                _buildOffstageNavigator(MenuBottom.MOVIES),
                _buildOffstageNavigator(MenuBottom.TV),
              ]),
            ),
          ),
          MenuBottomWidget(
            onTabMenu: (menu) {
              setState(() {
                if (_currentTab == menu) {
                } else {
                  _currentTab = menu;
                }
              });
            },
          )
        ],
      ),
    );
  }

  Widget _buildOffstageNavigator(MenuBottom menu) {
    return Offstage(offstage: _currentTab != menu, child: _navigatorPage[menu]);
  }
}
