import 'package:flutter/material.dart';
import 'package:tmdb_example/view/movies/component/movies_top_rated_widget.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        centerTitle: true,
      ),
      body: Container(
        child: TopRatedMoviesWidget(),
      ),
    );
  }
}
