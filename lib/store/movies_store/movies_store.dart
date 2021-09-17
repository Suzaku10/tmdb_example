import 'package:mobx/mobx.dart';
import 'package:tmdb_example/data/state.dart';
import 'package:tmdb_example/model/remote/movies_response/movies_response.dart';
import 'package:tmdb_example/network/repository/movies_repository.dart';

part 'movies_store.g.dart';

class MoviesStore = _MoviesStore with _$MoviesStore;

abstract class _MoviesStore with Store {
  MoviesRepository _repository = MoviesRepository();

  @observable
  MoviesResponse? topRated;

  @observable
  ObservableFuture? _topRatedFuture;

  @observable
  MoviesResponse? upcoming;

  @observable
  ObservableFuture? _upcomingFuture;

  @computed
  NetworkState get topRatedState {
    return _topRatedFuture?.status == FutureStatus.pending
        ? NetworkState.loading
        : NetworkState.loaded;
  }

  @computed
  NetworkState get upcomingState {
    return _upcomingFuture?.status == FutureStatus.pending
        ? NetworkState.loading
        : NetworkState.loaded;
  }

  @action
  Future<void> fetchMoviesData() async {
    _futureTopRated();
    _futureUpcoming();
  }

  @action
  Future<void> _futureTopRated() async {
    try {
      _topRatedFuture = ObservableFuture(_repository.fetchTopRatedMovies());
      topRated = await _topRatedFuture;
    } catch (e) {}
  }

  @action
  Future<void> _futureUpcoming() async {
    try {
      _upcomingFuture = ObservableFuture(_repository.fetchUpcomingMovies());
      upcoming = await _upcomingFuture;
    } catch (e) {}
  }
}
