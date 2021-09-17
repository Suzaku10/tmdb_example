import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_example/model/remote/movies_model/movies_model.dart';

part 'top_rated_response.g.dart';

@JsonSerializable()
class TopRatedResponse {
  final int? page;
  final List<MoviesModel>? results;
  @JsonKey(name: 'total_pages')
  final double? totalPages;
  @JsonKey(name: 'total_results')
  final double? totalResults;

  TopRatedResponse(
      {this.page, this.results, this.totalPages, this.totalResults});

  factory TopRatedResponse.fromJson(Map<String, dynamic> json) =>
      _$TopRatedResponseFromJson(json);
}
