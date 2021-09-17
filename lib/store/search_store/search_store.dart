import 'package:mobx/mobx.dart';
import 'package:tmdb_example/data/state.dart';
import 'package:tmdb_example/model/remote/search_response/search_response.dart';
import 'package:tmdb_example/network/repository/search_repository.dart';

part 'search_store.g.dart';

class SearchStore = _SearchStore with _$SearchStore;

abstract class _SearchStore with Store {
  SearchRepository _repository = SearchRepository();

  @observable
  SearchResponse? searchResponse;

  @observable
  ObservableFuture? _future;

  @computed
  NetworkState get searchState {
    if (_future == null) return NetworkState.initial;
    return _future?.status == FutureStatus.pending
        ? NetworkState.loading
        : NetworkState.loaded;
  }

  @action
  Future<void> searchByKeyword(String keyword) async {
    try {
      _future = ObservableFuture(
        _repository.searchByKeyword(keyword),
      );
      searchResponse = await _future;
    } catch (e) {}
  }

  @action
  void reset() {
    searchResponse = null;
  }
}
