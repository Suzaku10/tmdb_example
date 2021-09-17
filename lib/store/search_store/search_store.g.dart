// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchStore on _SearchStore, Store {
  Computed<NetworkState>? _$searchStateComputed;

  @override
  NetworkState get searchState =>
      (_$searchStateComputed ??= Computed<NetworkState>(() => super.searchState,
              name: '_SearchStore.searchState'))
          .value;

  final _$searchResponseAtom = Atom(name: '_SearchStore.searchResponse');

  @override
  SearchResponse? get searchResponse {
    _$searchResponseAtom.reportRead();
    return super.searchResponse;
  }

  @override
  set searchResponse(SearchResponse? value) {
    _$searchResponseAtom.reportWrite(value, super.searchResponse, () {
      super.searchResponse = value;
    });
  }

  final _$_futureAtom = Atom(name: '_SearchStore._future');

  @override
  ObservableFuture<dynamic>? get _future {
    _$_futureAtom.reportRead();
    return super._future;
  }

  @override
  set _future(ObservableFuture<dynamic>? value) {
    _$_futureAtom.reportWrite(value, super._future, () {
      super._future = value;
    });
  }

  final _$searchByKeywordAsyncAction =
      AsyncAction('_SearchStore.searchByKeyword');

  @override
  Future<void> searchByKeyword(String keyword) {
    return _$searchByKeywordAsyncAction
        .run(() => super.searchByKeyword(keyword));
  }

  final _$_SearchStoreActionController = ActionController(name: '_SearchStore');

  @override
  void reset() {
    final _$actionInfo =
        _$_SearchStoreActionController.startAction(name: '_SearchStore.reset');
    try {
      return super.reset();
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchResponse: ${searchResponse},
searchState: ${searchState}
    ''';
  }
}
