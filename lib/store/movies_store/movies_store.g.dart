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

  @override
  String toString() {
    return '''
topRated: ${topRated},
upcoming: ${upcoming},
topRatedState: ${topRatedState},
upcomingState: ${upcomingState}
    ''';
  }
}
