// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TvStore on _TvStore, Store {
  Computed<NetworkState>? _$topRatedStateComputed;

  @override
  NetworkState get topRatedState => (_$topRatedStateComputed ??=
          Computed<NetworkState>(() => super.topRatedState,
              name: '_TvStore.topRatedState'))
      .value;
  Computed<NetworkState>? _$airingTodayStateComputed;

  @override
  NetworkState get airingTodayState => (_$airingTodayStateComputed ??=
          Computed<NetworkState>(() => super.airingTodayState,
              name: '_TvStore.airingTodayState'))
      .value;
  Computed<NetworkState>? _$popularStateComputed;

  @override
  NetworkState get popularState => (_$popularStateComputed ??=
          Computed<NetworkState>(() => super.popularState,
              name: '_TvStore.popularState'))
      .value;
  Computed<NetworkState>? _$onAirStateComputed;

  @override
  NetworkState get onAirState =>
      (_$onAirStateComputed ??= Computed<NetworkState>(() => super.onAirState,
              name: '_TvStore.onAirState'))
          .value;

  final _$topRatedAtom = Atom(name: '_TvStore.topRated');

  @override
  TvResponse? get topRated {
    _$topRatedAtom.reportRead();
    return super.topRated;
  }

  @override
  set topRated(TvResponse? value) {
    _$topRatedAtom.reportWrite(value, super.topRated, () {
      super.topRated = value;
    });
  }

  final _$_topRatedFutureAtom = Atom(name: '_TvStore._topRatedFuture');

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

  final _$airingTodayAtom = Atom(name: '_TvStore.airingToday');

  @override
  TvResponse? get airingToday {
    _$airingTodayAtom.reportRead();
    return super.airingToday;
  }

  @override
  set airingToday(TvResponse? value) {
    _$airingTodayAtom.reportWrite(value, super.airingToday, () {
      super.airingToday = value;
    });
  }

  final _$_airingTodayFutureAtom = Atom(name: '_TvStore._airingTodayFuture');

  @override
  ObservableFuture<dynamic>? get _airingTodayFuture {
    _$_airingTodayFutureAtom.reportRead();
    return super._airingTodayFuture;
  }

  @override
  set _airingTodayFuture(ObservableFuture<dynamic>? value) {
    _$_airingTodayFutureAtom.reportWrite(value, super._airingTodayFuture, () {
      super._airingTodayFuture = value;
    });
  }

  final _$popularAtom = Atom(name: '_TvStore.popular');

  @override
  TvResponse? get popular {
    _$popularAtom.reportRead();
    return super.popular;
  }

  @override
  set popular(TvResponse? value) {
    _$popularAtom.reportWrite(value, super.popular, () {
      super.popular = value;
    });
  }

  final _$_popularFutureAtom = Atom(name: '_TvStore._popularFuture');

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

  final _$onAirAtom = Atom(name: '_TvStore.onAir');

  @override
  TvResponse? get onAir {
    _$onAirAtom.reportRead();
    return super.onAir;
  }

  @override
  set onAir(TvResponse? value) {
    _$onAirAtom.reportWrite(value, super.onAir, () {
      super.onAir = value;
    });
  }

  final _$_onAirFutureAtom = Atom(name: '_TvStore._onAirFuture');

  @override
  ObservableFuture<dynamic>? get _onAirFuture {
    _$_onAirFutureAtom.reportRead();
    return super._onAirFuture;
  }

  @override
  set _onAirFuture(ObservableFuture<dynamic>? value) {
    _$_onAirFutureAtom.reportWrite(value, super._onAirFuture, () {
      super._onAirFuture = value;
    });
  }

  final _$fetchMoviesDataAsyncAction = AsyncAction('_TvStore.fetchMoviesData');

  @override
  Future<void> fetchMoviesData() {
    return _$fetchMoviesDataAsyncAction.run(() => super.fetchMoviesData());
  }

  final _$_futureTopRatedAsyncAction = AsyncAction('_TvStore._futureTopRated');

  @override
  Future<void> _futureTopRated() {
    return _$_futureTopRatedAsyncAction.run(() => super._futureTopRated());
  }

  final _$_futureOnAirAsyncAction = AsyncAction('_TvStore._futureOnAir');

  @override
  Future<void> _futureOnAir() {
    return _$_futureOnAirAsyncAction.run(() => super._futureOnAir());
  }

  final _$_futureAiringTodayAsyncAction =
      AsyncAction('_TvStore._futureAiringToday');

  @override
  Future<void> _futureAiringToday() {
    return _$_futureAiringTodayAsyncAction
        .run(() => super._futureAiringToday());
  }

  final _$_futurePopularAsyncAction = AsyncAction('_TvStore._futurePopular');

  @override
  Future<void> _futurePopular() {
    return _$_futurePopularAsyncAction.run(() => super._futurePopular());
  }

  @override
  String toString() {
    return '''
topRated: ${topRated},
airingToday: ${airingToday},
popular: ${popular},
onAir: ${onAir},
topRatedState: ${topRatedState},
airingTodayState: ${airingTodayState},
popularState: ${popularState},
onAirState: ${onAirState}
    ''';
  }
}
