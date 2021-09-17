// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopRatedResponse _$TopRatedResponseFromJson(Map<String, dynamic> json) {
  return TopRatedResponse(
    page: json['page'] as int?,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => MoviesModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalPages: (json['total_pages'] as num?)?.toDouble(),
    totalResults: (json['total_results'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$TopRatedResponseToJson(TopRatedResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
