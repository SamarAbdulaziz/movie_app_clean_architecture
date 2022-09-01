import 'package:get_it/get_it.dart';
import 'package:movies_app_clean_architecture/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app_clean_architecture/movies/data/repository/movies_repository.dart';
import 'package:movies_app_clean_architecture/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_app_clean_architecture/movies/domain/usecases/get_movies_details_use_case.dart';
import 'package:movies_app_clean_architecture/movies/domain/usecases/get_now_playing_movies_use_case.dart';
import 'package:movies_app_clean_architecture/movies/domain/usecases/get_popular_movies_use_case.dart';
import 'package:movies_app_clean_architecture/movies/domain/usecases/get_recommendation_movies_use_case.dart';
import 'package:movies_app_clean_architecture/movies/domain/usecases/get_top_rated_movies_use_case.dart';
import 'package:movies_app_clean_architecture/movies/presentation/controllers/movie_details_bloc.dart';
import 'package:movies_app_clean_architecture/movies/presentation/controllers/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());

    /// Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    ///Use Cases
    sl.registerLazySingleton<GetNowPlayingMoviesUseCase>(
        () => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton<GetPopularMoviesUseCase>(
        () => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton<GetTopRatedMoviesUseCase>(
        () => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton<GetMovieDetailsUseCase>(
        () => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton<GetRecommendationMoviesUseCase>(
        () => GetRecommendationMoviesUseCase(sl()));

    /// BLOC
    sl.registerFactory<MoviesBloc>(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory<MovieDetailsBloc>(() => MovieDetailsBloc(sl(),sl()));
  }
}
