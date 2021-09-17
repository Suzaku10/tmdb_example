import 'package:tmdb_example/configure/base_dio_service.dart';
import 'package:tmdb_example/configure/service_url.dart';
import 'package:tmdb_example/model/remote/search_request/search_request.dart';
import 'package:tmdb_example/model/remote/search_response/search_response.dart';

class SearchRepository extends BaseServiceDio {
  Future<SearchResponse?> searchByKeyword(String keyword) async {
    try {
      final queryParam = SearchRequest(query: keyword).toJson();
      final response = await service.get(ServiceUrl.searchByKeyword,
          queryParameters: queryParam);
      return SearchResponse.fromJson(response);
    } catch (e) {
      print(e);
    }
  }
}
