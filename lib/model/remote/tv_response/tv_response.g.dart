// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvResponse _$TvResponseFromJson(Map<String, dynamic> json) {
  return TvResponse(
    page: json['page'] as int?,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => ItemTvModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalPages: json['total_pages'] as int?,
    totalResults: json['total_results'] as int?,
  );
}

Map<String, dynamic> _$TvResponseToJson(TvResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
