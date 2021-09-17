import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:tmdb_example/data/state.dart';
import 'package:tmdb_example/store/search_store/search_store.dart';
import 'package:tmdb_example/view/component/item_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController _controller;
  SearchStore? _store;

  @override
  void initState() {
    super.initState();
    _store ??= GetIt.I.get<SearchStore>();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _store?.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: "Type Here"),
            controller: _controller,
            onSubmitted: (value) => _store?.searchByKeyword(value),
          ),
        ),
      ),
      body: Observer(builder: (_) {
        if (_store?.searchState == NetworkState.loaded) {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) => ItemSearch(
              model: _store?.searchResponse?.results?[index],
            ),
            itemCount: _store?.searchResponse?.results?.length ?? 0,
          );
        } else if (_store?.searchState == NetworkState.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Center(
            child: Text("Please Type Keyword"),
          );
        }
      }),
    );
  }
}
