import 'package:flutter/material.dart';
import 'package:tmdb_example/model/local/item_menu.dart';

import 'item_menu_widget.dart';

class MenuBottomWidget extends StatefulWidget {
  final Function(MenuBottom) onTabMenu;

  const MenuBottomWidget({Key? key, required this.onTabMenu}) : super(key: key);

  @override
  _MenuBottomWidgetState createState() => _MenuBottomWidgetState();
}

class _MenuBottomWidgetState extends State<MenuBottomWidget> {
  int currentPosition = 0;
  List<ItemMenu> _list = [];

  @override
  void initState() {
    super.initState();
    _list = [
      ItemMenu(
        id: MenuBottom.MOVIES,
        isActive: true,
        image: 'ic_menu_home',
        imageActive: 'ic_menu_home_active',
      ),
      ItemMenu(
        id: MenuBottom.TV,
        isActive: false,
        image: 'ic_menu_inbox',
        imageActive: 'ic_menu_inbox_active',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 2,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < _list.length; i++)
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      _onTabMenu(i);
                    },
                    child: ItemMenuWidget(
                      itemMenu: _list[i],
                    ),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }

  void _onTabMenu(int position) async {
    widget.onTabMenu(_list[position].id);
    setState(() {
      _list[currentPosition].isActive = false;
      _list[position].isActive = true;
      currentPosition = position;
    });
  }
}
