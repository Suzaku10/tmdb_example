import 'package:tmdb_example/configure/base_dio_service.dart';
import 'package:tmdb_example/configure/service_url.dart';
import 'package:tmdb_example/model/remote/top_rated_response/top_rated_response.dart';

class MoviesRepository extends BaseServiceDio {
  Future<TopRatedResponse?> fetchTopRatedMovies() async {
    try {
      final response = await service.get(ServiceUrl.topRatedMovies);
      return TopRatedResponse.fromJson(response);
    } catch (e) {

    }
  }
}
