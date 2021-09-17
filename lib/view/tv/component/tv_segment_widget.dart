import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tmdb_example/model/remote/item_movies_model/item_movie_model.dart';
import 'package:tmdb_example/model/remote/item_tv_model/item_tv_model.dart';
import 'package:tmdb_example/view/component/item_movies.dart';
import 'package:tmdb_example/view/component/item_tv.dart';

class TvSegmentWidget extends StatelessWidget {
  final String? title;
  final List<ItemTvModel>? model;

  const TvSegmentWidget({Key? key, this.title, this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(top: 16),
          child: Text(
            title ?? "",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, wordSpacing: 1.5),
          ),
        ),
        Flexible(
          child: Container(
            height: 440,
            child: (model?.length ?? 0) == 0
                ? Container(
                    margin: EdgeInsets.all(16),
                    color: Colors.grey,
                    width: double.infinity,
                    child: Center(
                      child: Text("No TV Found"),
                    ),
                  )
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ItemTvWidget(
                      item: model?[index],
                    ),
                    itemCount: model?.length ?? 0,
                  ),
          ),
        )
      ],
    );
  }
}
