import 'package:flutter/material.dart';
import 'package:tmdb_example/data/constant.dart';
import 'package:tmdb_example/model/remote/item_movies_model/item_movie_model.dart';
import 'package:tmdb_example/utilities/function_utilities.dart';

class ItemMoviesWidget extends StatelessWidget {
  final ItemMovieModel? item;

  const ItemMoviesWidget({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all()),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 300,
                      width: 200,
                      child: FadeInImage(
                        image: NetworkImage(item?.posterPath != null
                            ? '$imageBaseUrl${item?.posterPath}'
                            : imagePlaceholderUrl),
                        placeholder: AssetImage(
                          getSourceByNameImage('logo'),
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 20,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("${item?.voteAverage ?? 0}"),
                          Image.asset(
                            getSourceByNameImage('ic_star_fill'),
                            width: 12,
                            height: 12,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              constraints: BoxConstraints(maxWidth: 200),
              child: Text(
                item?.title ?? "",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              item?.releaseDate ?? "-",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
