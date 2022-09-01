class ApiConstants {
  static String baseUrl = 'https://api.themoviedb.org/3';
  static String apiKey = '70217c71c4f0bd2ebbf53d98433a6c9c';
  static String nowPlayingMoviePath = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static String popularMoviePath = '$baseUrl/movie/popular?api_key=$apiKey';
  static String topRatedMoviePath = '$baseUrl/movie/top_rated?api_key=$apiKey';
  static String getMovieDetailsPath(int movieId)=> '$baseUrl/movie/$movieId?api_key=$apiKey';
  static String getRecommendationMoviesPath(int movieId)=> '$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';
  static String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path){
    return '$baseImageUrl$path';
  }
}
