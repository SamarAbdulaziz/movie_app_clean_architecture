import 'package:dartz/dartz.dart';
import 'package:movies_app_clean_architecture/core/error/failure.dart';
import 'package:movies_app_clean_architecture/core/useCase/base_usecase.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/movie.dart';
import 'package:movies_app_clean_architecture/movies/domain/repository/base_movie_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
