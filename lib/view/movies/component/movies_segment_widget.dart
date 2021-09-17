import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tmdb_example/model/remote/item_movies_model/item_movie_model.dart';
import 'package:tmdb_example/view/component/item_movies.dart';

class MoviesSegmentWidget extends StatelessWidget {
  final String? title;
  final List<ItemMovieModel>? model;

  const MoviesSegmentWidget({Key? key, this.title, this.model})
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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ItemMoviesWidget(
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
