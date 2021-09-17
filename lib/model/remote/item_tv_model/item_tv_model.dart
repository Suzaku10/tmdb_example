import 'package:json_annotation/json_annotation.dart';

part 'item_tv_model.g.dart';

@JsonSerializable()
class ItemTvModel {
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'first_air_date')
  final String? firstAirDate;
  @JsonKey(name: 'genre_ids')
  final List<int?>? genreIds;
  final int? id;
  final String? name;
  @JsonKey(name: 'origin_country')
  final List<String?>? originCountry;
  @JsonKey(name: 'original_name')
  final String? originalName;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  final String? overview;
  final double? popularity;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  ItemTvModel(
      {this.backdropPath,
      this.firstAirDate,
      this.genreIds,
      this.id,
      this.name,
      this.originCountry,
      this.originalName,
      this.originalLanguage,
      this.overview,
      this.popularity,
      this.posterPath,
      this.voteAverage,
      this.voteCount});

  factory ItemTvModel.fromJson(Map<String, dynamic> json) =>
      _$ItemTvModelFromJson(json);
}
