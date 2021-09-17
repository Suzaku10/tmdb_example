import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:tmdb_example/data/state.dart';
import 'package:tmdb_example/store/movies_store/movies_store.dart';
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
            return Container(
              height: 200,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });

      case 1:
        return Observer(builder: (_) {
          if (_store?.topRatedState == NetworkState.loaded) {
            return MoviesSegmentWidget(
                title: "Upcoming", model: _store?.upcoming?.results);
          } else {
            return Container(
              height: 200,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
      case 2:
        return Observer(builder: (_) {
          if (_store?.popularState == NetworkState.loaded) {
            return MoviesSegmentWidget(
                title: "Popular", model: _store?.popular?.results);
          } else {
            return Container(
              height: 200,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
      case 3:
        return Observer(builder: (_) {
          if (_store?.nowPlayingState == NetworkState.loaded) {
            return MoviesSegmentWidget(
                title: "Now Playing", model: _store?.nowPlaying?.results);
          } else {
            return Container(
              height: 200,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
      default:
        return Container();
    }
  }
}
