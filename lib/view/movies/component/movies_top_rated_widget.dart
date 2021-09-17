import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tmdb_example/view/component/item_movies.dart';

class TopRatedMoviesWidget extends StatelessWidget {
  const TopRatedMoviesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(top: 16),
          child: Text(
            "Popular Movies",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, wordSpacing: 1.5),
          ),
        ),
        Flexible(
          child: Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ItemMoviesWidget(),
              itemCount: 10,
            ),
          ),
        )
      ],
    );
  }
}
