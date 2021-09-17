import 'package:get_it/get_it.dart';
import 'package:tmdb_example/store/movies_store/movies_store.dart';

final getItRegistry = GetItRegistry();

class GetItRegistry {
  doRegister() {
    GetIt.I.registerSingleton<MoviesStore>(MoviesStore());
  }
}
