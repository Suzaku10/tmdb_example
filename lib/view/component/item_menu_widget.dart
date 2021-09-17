import 'package:flutter/material.dart';
import 'package:tmdb_example/model/local/item_menu.dart';

class ItemMenuWidget extends StatelessWidget {
  final ItemMenu itemMenu;

  const ItemMenuWidget({Key? key, required this.itemMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: kBottomNavigationBarHeight,
      padding: const EdgeInsets.only(top: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60), color: Colors.black),
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            child: Text(
              getTitleByLocalization(itemMenu.id),
              style: TextStyle(
                  color: itemMenu.isActive == true ? Colors.green : Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 10),
            ),
          )
        ],
      ),
    );
  }

  String getTitleByLocalization(MenuBottom id) {
    switch (id) {
      case MenuBottom.MOVIES:
        return "Movies";
      case MenuBottom.TV:
        return "Tv";
      default:
        return '';
    }
  }
}
