// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) {
  return MoviesResponse(
    page: json['page'] as int?,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => ItemMovieModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalPages: (json['total_pages'] as num?)?.toDouble(),
    totalResults: (json['total_results'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$MoviesResponseToJson(MoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
