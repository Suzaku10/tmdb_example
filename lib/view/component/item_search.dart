import 'package:flutter/material.dart';
import 'package:tmdb_example/data/constant.dart';
import 'package:tmdb_example/model/remote/item_search_model/item_search_model.dart';
import 'package:tmdb_example/utilities/function_utilities.dart';

class ItemSearch extends StatefulWidget {
  final ItemSearchModel? model;

  const ItemSearch({Key? key, this.model}) : super(key: key);

  @override
  _ItemSearchState createState() => _ItemSearchState();
}

class _ItemSearchState extends State<ItemSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: FadeInImage(
              image: NetworkImage(
                  "$imageBaseUrl${widget.model?.posterPath ?? ''}"),
              placeholder: AssetImage(
                getSourceByNameImage('logo'),
              ),
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(widget.model?.title ?? ""),
          ),
        ],
      ),
    );
  }
}
