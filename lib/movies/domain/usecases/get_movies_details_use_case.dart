import 'package:dartz/dartz.dart';
import 'package:movies_app_clean_architecture/core/error/failure.dart';
import 'package:movies_app_clean_architecture/core/useCase/base_usecase.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/movie_details.dart';
import 'package:movies_app_clean_architecture/movies/domain/repository/base_movie_repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetails, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetails>> call(MovieDetailsParameters parameters)async {
   return await  baseMoviesRepository.getMovieDetails(parameters);
  }
}
//
// class MovieDetailsParameters extends Equatable {
//   final int movieId;
//
//   const MovieDetailsParameters({required this.movieId});
//
//   @override
//   List<Object> get props => [movieId];
// }
