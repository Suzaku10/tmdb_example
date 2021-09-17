import 'package:mobx/mobx.dart';
import 'package:tmdb_example/data/state.dart';
import 'package:tmdb_example/model/remote/tv_response/tv_response.dart';
import 'package:tmdb_example/network/repository/tv_repository.dart';

part 'tv_store.g.dart';

class TvStore = _TvStore with _$TvStore;

abstract class _TvStore with Store {
  TvRepository _repository = TvRepository();

  @observable
  TvResponse? topRated;

  @observable
  ObservableFuture? _topRatedFuture;

  @observable
  TvResponse? airingToday;

  @observable
  ObservableFuture? _airingTodayFuture;

  @observable
  TvResponse? popular;

  @observable
  ObservableFuture? _popularFuture;

  @observable
  TvResponse? onAir;

  @observable
  ObservableFuture? _onAirFuture;

  @computed
  NetworkState get topRatedState {
    return _topRatedFuture?.status == FutureStatus.pending
        ? NetworkState.loading
        : NetworkState.loaded;
  }

  @computed
  NetworkState get airingTodayState {
    return _airingTodayFuture?.status == FutureStatus.pending
        ? NetworkState.loading
        : NetworkState.loaded;
  }

  @computed
  NetworkState get popularState {
    return _popularFuture?.status == FutureStatus.pending
        ? NetworkState.loading
        : NetworkState.loaded;
  }

  @computed
  NetworkState get onAirState {
    return _onAirFuture?.status == FutureStatus.pending
        ? NetworkState.loading
        : NetworkState.loaded;
  }

  @action
  Future<void> fetchMoviesData() async {
    _futureTopRated();
    _futureOnAir();
    _futurePopular();
    _futureAiringToday();
  }

  @action
  Future<void> _futureTopRated() async {
    try {
      _topRatedFuture = ObservableFuture(_repository.fetchTopRatedTV());
      topRated = await _topRatedFuture;
    } catch (e) {}
  }

  @action
  Future<void> _futureOnAir() async {
    try {
      _onAirFuture = ObservableFuture(_repository.fetchOnTheAirTv());
      onAir = await _onAirFuture;
    } catch (e) {}
  }

  @action
  Future<void> _futureAiringToday() async {
    try {
      _airingTodayFuture = ObservableFuture(_repository.fetchAiringTodayTv());
      airingToday = await _airingTodayFuture;
    } catch (e) {}
  }

  @action
  Future<void> _futurePopular() async {
    try {
      _popularFuture = ObservableFuture(_repository.fetchPopularTv());
      popular = await _popularFuture;
    } catch (e) {}
  }
}
