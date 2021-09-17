import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_example/data/state.dart';
import 'package:tmdb_example/store/movies_store/movies_store.dart';
import 'package:tmdb_example/view/component/item_skeleton_movies.dart';
import 'package:tmdb_example/view/movies/component/movies_segment_widget.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  MoviesStore? _store;

  @override
  void initState() {
    super.initState();
    _store ??= GetIt.I.get<MoviesStore>();
    _store?.fetchMoviesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) => _moviesSegment(index),
          itemCount: 4,
        ),
      ),
    );
  }

  Widget _moviesSegment(int index) {
    switch (index) {
      case 0:
        return Observer(builder: (_) {
          if (_store?.topRatedState == NetworkState.loaded) {
            return MoviesSegmentWidget(
                title: "Top Rated", model: _store?.topRated?.results);
          } else {
            return _moviesSkeletonWidget();
          }
        });
      case 1:
        return Observer(builder: (_) {
          if (_store?.topRatedState == NetworkState.loaded) {
            return MoviesSegmentWidget(
                title: "Upcoming", model: _store?.upcoming?.results);
          } else {
            return _moviesSkeletonWidget();
          }
        });
      case 2:
        return Observer(builder: (_) {
          if (_store?.popularState == NetworkState.loaded) {
            return MoviesSegmentWidget(
                title: "Popular", model: _store?.popular?.results);
          } else {
            return _moviesSkeletonWidget();
          }
        });
      case 3:
        return Observer(builder: (_) {
          if (_store?.nowPlayingState == NetworkState.loaded) {
            return MoviesSegmentWidget(
                title: "Now Playing", model: _store?.nowPlaying?.results);
          } else {
            return _moviesSkeletonWidget();
          }
        });
      default:
        return Container();
    }
  }

  Widget _moviesSkeletonWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(top: 16),
          child: Shimmer.fromColors(
              child: Container(
                color: Colors.white,
                height: 10,
                width: 70,
              ),
              baseColor: Colors.grey,
              highlightColor: Colors.amber),
        ),
        Flexible(
          child: Container(
            height: 440,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ItemSkeletonMoviesWidget(),
              itemCount: 5,
            ),
          ),
        )
      ],
    );
  }
}
