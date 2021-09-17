// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MoviesStore on _MoviesStore, Store {
  Computed<NetworkState>? _$topRatedStateComputed;

  @override
  NetworkState get topRatedState => (_$topRatedStateComputed ??=
          Computed<NetworkState>(() => super.topRatedState,
              name: '_MoviesStore.topRatedState'))
      .value;
  Computed<NetworkState>? _$upcomingStateComputed;

  @override
  NetworkState get upcomingState => (_$upcomingStateComputed ??=
          Computed<NetworkState>(() => super.upcomingState,
              name: '_MoviesStore.upcomingState'))
      .value;
  Computed<NetworkState>? _$popularStateComputed;

  @override
  NetworkState get popularState => (_$popularStateComputed ??=
          Computed<NetworkState>(() => super.popularState,
              name: '_MoviesStore.popularState'))
      .value;
  Computed<NetworkState>? _$nowPlayingStateComputed;

  @override
  NetworkState get nowPlayingState => (_$nowPlayingStateComputed ??=
          Computed<NetworkState>(() => super.nowPlayingState,
              name: '_MoviesStore.nowPlayingState'))
      .value;

  final _$topRatedAtom = Atom(name: '_MoviesStore.topRated');

  @override
  MoviesResponse? get topRated {
    _$topRatedAtom.reportRead();
    return super.topRated;
  }

  @override
  set topRated(MoviesResponse? value) {
    _$topRatedAtom.reportWrite(value, super.topRated, () {
      super.topRated = value;
    });
  }

  final _$_topRatedFutureAtom = Atom(name: '_MoviesStore._topRatedFuture');

  @override
  ObservableFuture<dynamic>? get _topRatedFuture {
    _$_topRatedFutureAtom.reportRead();
    return super._topRatedFuture;
  }

  @override
  set _topRatedFuture(ObservableFuture<dynamic>? value) {
    _$_topRatedFutureAtom.reportWrite(value, super._topRatedFuture, () {
      super._topRatedFuture = value;
    });
  }

  final _$upcomingAtom = Atom(name: '_MoviesStore.upcoming');

  @override
  MoviesResponse? get upcoming {
    _$upcomingAtom.reportRead();
    return super.upcoming;
  }

  @override
  set upcoming(MoviesResponse? value) {
    _$upcomingAtom.reportWrite(value, super.upcoming, () {
      super.upcoming = value;
    });
  }

  final _$_upcomingFutureAtom = Atom(name: '_MoviesStore._upcomingFuture');

  @override
  ObservableFuture<dynamic>? get _upcomingFuture {
    _$_upcomingFutureAtom.reportRead();
    return super._upcomingFuture;
  }

  @override
  set _upcomingFuture(ObservableFuture<dynamic>? value) {
    _$_upcomingFutureAtom.reportWrite(value, super._upcomingFuture, () {
      super._upcomingFuture = value;
    });
  }

  final _$popularAtom = Atom(name: '_MoviesStore.popular');

  @override
  MoviesResponse? get popular {
    _$popularAtom.reportRead();
    return super.popular;
  }

  @override
  set popular(MoviesResponse? value) {
    _$popularAtom.reportWrite(value, super.popular, () {
      super.popular = value;
    });
  }

  final _$_popularFutureAtom = Atom(name: '_MoviesStore._popularFuture');

  @override
  ObservableFuture<dynamic>? get _popularFuture {
    _$_popularFutureAtom.reportRead();
    return super._popularFuture;
  }

  @override
  set _popularFuture(ObservableFuture<dynamic>? value) {
    _$_popularFutureAtom.reportWrite(value, super._popularFuture, () {
      super._popularFuture = value;
    });
  }

  final _$nowPlayingAtom = Atom(name: '_MoviesStore.nowPlaying');

  @override
  MoviesResponse? get nowPlaying {
    _$nowPlayingAtom.reportRead();
    return super.nowPlaying;
  }

  @override
  set nowPlaying(MoviesResponse? value) {
    _$nowPlayingAtom.reportWrite(value, super.nowPlaying, () {
      super.nowPlaying = value;
    });
  }

  final _$_nowPlayingFutureAtom = Atom(name: '_MoviesStore._nowPlayingFuture');

  @override
  ObservableFuture<dynamic>? get _nowPlayingFuture {
    _$_nowPlayingFutureAtom.reportRead();
    return super._nowPlayingFuture;
  }

  @override
  set _nowPlayingFuture(ObservableFuture<dynamic>? value) {
    _$_nowPlayingFutureAtom.reportWrite(value, super._nowPlayingFuture, () {
      super._nowPlayingFuture = value;
    });
  }

  final _$fetchMoviesDataAsyncAction =
      AsyncAction('_MoviesStore.fetchMoviesData');

  @override
  Future<void> fetchMoviesData() {
    return _$fetchMoviesDataAsyncAction.run(() => super.fetchMoviesData());
  }

  final _$_futureTopRatedAsyncAction =
      AsyncAction('_MoviesStore._futureTopRated');

  @override
  Future<void> _futureTopRated() {
    return _$_futureTopRatedAsyncAction.run(() => super._futureTopRated());
  }

  final _$_futureUpcomingAsyncAction =
      AsyncAction('_MoviesStore._futureUpcoming');

  @override
  Future<void> _futureUpcoming() {
    return _$_futureUpcomingAsyncAction.run(() => super._futureUpcoming());
  }

  final _$_futureNowPlayingAsyncAction =
      AsyncAction('_MoviesStore._futureNowPlaying');

  @override
  Future<void> _futureNowPlaying() {
    return _$_futureNowPlayingAsyncAction.run(() => super._futureNowPlaying());
  }

  final _$_futurePopularAsyncAction =
      AsyncAction('_MoviesStore._futurePopular');

  @override
  Future<void> _futurePopular() {
    return _$_futurePopularAsyncAction.run(() => super._futurePopular());
  }

  @override
  String toString() {
    return '''
topRated: ${topRated},
upcoming: ${upcoming},
popular: ${popular},
nowPlaying: ${nowPlaying},
topRatedState: ${topRatedState},
upcomingState: ${upcomingState},
popularState: ${popularState},
nowPlayingState: ${nowPlayingState}
    ''';
  }
}
