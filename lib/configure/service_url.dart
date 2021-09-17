class ServiceUrl {
  ServiceUrl._();

  static String get configuration => 'configuration';

  static String get search => 'search';

  static String get _movies => 'movies';

  static String get _tv => 'tv';

// Movies
  static String get topRatedMovies => '$_movies/top_rated';

  static String get upComingMovies => '$_movies/upcoming';

  static String get nowPlayingMovies => '$_movies/now_playing';

  static String get popularMovies => '$_movies/popular';

// Tv
  static String get topRatedTv => "$_tv/top_rated";

  static String get popularTv => "$_tv/popular";

  static String get onTheAirTv => "$_tv/on_the_air";

  static String get airingTodayTv => "$_tv/airing_today";
}
