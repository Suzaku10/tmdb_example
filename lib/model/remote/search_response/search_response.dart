import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_example/model/remote/item_search_model/item_search_model.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  final int? page;
  final List<ItemSearchModel>? results;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  SearchResponse({this.page, this.results, this.totalPages, this.totalResults});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
