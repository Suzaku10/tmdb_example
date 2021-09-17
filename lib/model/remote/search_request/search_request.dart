import 'package:json_annotation/json_annotation.dart';

part 'search_request.g.dart';

@JsonSerializable()
class SearchRequest {
  final String? query;

  SearchRequest({this.query});

  factory SearchRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRequestToJson(this);
}
