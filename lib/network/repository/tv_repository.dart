import 'package:tmdb_example/configure/base_dio_service.dart';
import 'package:tmdb_example/configure/service_url.dart';
import 'package:tmdb_example/model/remote/movies_response/movies_response.dart';
import 'package:tmdb_example/model/remote/tv_response/tv_response.dart';

class TvRepository extends BaseServiceDio {
  Future<TvResponse?> fetchTopRatedTV() async {
    try {
      final response = await service.get(ServiceUrl.topRatedTv);
      return TvResponse.fromJson(response);
    } catch (e) {}
  }

  Future<TvResponse?> fetchOnTheAirTv() async {
    try {
      final response = await service.get(ServiceUrl.onTheAirTv);
      return TvResponse.fromJson(response);
    } catch (e) {}
  }

  Future<TvResponse?> fetchPopularTv() async {
    try {
      final response = await service.get(ServiceUrl.popularTv);
      return TvResponse.fromJson(response);
    } catch (e) {}
  }

  Future<TvResponse?> fetchAiringTodayTv() async {
    try {
      final response = await service.get(ServiceUrl.airingTodayTv);
      return TvResponse.fromJson(response);
    } catch (e) {}
  }
}
