import 'package:tmdb_example/configure/base_dio_service.dart';
import 'package:tmdb_example/configure/service_url.dart';
import 'package:tmdb_example/model/remote/movies_response/movies_response.dart';

class MoviesRepository extends BaseServiceDio {
  Future<MoviesResponse?> fetchTopRatedMovies() async {
    try {
      final response = await service.get(ServiceUrl.topRatedMovies);
      return MoviesResponse.fromJson(response);
    } catch (e) {

    }
  }

  Future<MoviesResponse?> fetchUpcomingMovies() async {
    try {
      final response = await service.get(ServiceUrl.upComingMovies);
      return MoviesResponse.fromJson(response);
    } catch (e) {
    }
  }
}
