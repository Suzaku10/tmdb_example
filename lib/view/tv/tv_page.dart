import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_example/data/state.dart';
import 'package:tmdb_example/store/tv_store/tv_store.dart';
import 'package:tmdb_example/view/component/item_skeleton_movies.dart';
import 'package:tmdb_example/view/component/search_widget.dart';
import 'package:tmdb_example/view/tv/component/tv_segment_widget.dart';

class TvPage extends StatefulWidget {
  const TvPage({Key? key}) : super(key: key);

  @override
  _TvPageState createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
  TvStore? _store;

  @override
  void initState() {
    super.initState();
    _store ??= GetIt.I.get<TvStore>();
    _store?.fetchMoviesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TV Show"),
        centerTitle: true,
        actions: [searchWidget(context)],
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
            return TvSegmentWidget(
                title: "Top Rated", model: _store?.topRated?.results);
          } else {
            return _moviesSkeletonWidget();
          }
        });
      case 1:
        return Observer(builder: (_) {
          if (_store?.onAirState == NetworkState.loaded) {
            return TvSegmentWidget(
                title: "ON AIR", model: _store?.onAir?.results);
          } else {
            return _moviesSkeletonWidget();
          }
        });
      case 2:
        return Observer(builder: (_) {
          if (_store?.popularState == NetworkState.loaded) {
            return TvSegmentWidget(
                title: "Popular", model: _store?.popular?.results);
          } else {
            return _moviesSkeletonWidget();
          }
        });
      case 3:
        return Observer(builder: (_) {
          if (_store?.airingTodayState == NetworkState.loaded) {
            return TvSegmentWidget(
                title: "AIRING TODAY", model: _store?.airingToday?.results);
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
