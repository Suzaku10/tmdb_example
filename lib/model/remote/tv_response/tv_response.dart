import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_example/model/remote/item_tv_model/item_tv_model.dart';

part 'tv_response.g.dart';

@JsonSerializable()
class TvResponse {
  final int? page;
  final List<ItemTvModel>? results;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  TvResponse({this.page, this.results, this.totalPages, this.totalResults});

  factory TvResponse.fromJson(Map<String, dynamic> json) =>
      _$TvResponseFromJson(json);
}
