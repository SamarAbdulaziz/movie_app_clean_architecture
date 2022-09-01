import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app_clean_architecture/core/error/failure.dart';
import 'package:movies_app_clean_architecture/core/useCase/base_usecase.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/movie.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/movie_details.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/recommendation.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters);

  Future<Either<Failure, List<Recommendation>>> getRecommendationMovies(
      RecommendationParameters parameters);
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
