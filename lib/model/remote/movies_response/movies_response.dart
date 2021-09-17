import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_example/model/remote/item_movies_model/item_movie_model.dart';

part 'movies_response.g.dart';

@JsonSerializable()
class MoviesResponse {
  final int? page;
  final List<ItemMovieModel>? results;
  @JsonKey(name: 'total_pages')
  final double? totalPages;
  @JsonKey(name: 'total_results')
  final double? totalResults;

  MoviesResponse(
      {this.page, this.results, this.totalPages, this.totalResults});

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);
}
