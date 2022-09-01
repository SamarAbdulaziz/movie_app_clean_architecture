import 'package:dartz/dartz.dart';
import 'package:movies_app_clean_architecture/core/error/failure.dart';
import 'package:movies_app_clean_architecture/core/useCase/base_usecase.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/recommendation.dart';
import 'package:movies_app_clean_architecture/movies/domain/repository/base_movie_repository.dart';

class GetRecommendationMoviesUseCase
    extends BaseUseCase<List<Recommendation>, RecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameters parameters) async {
    return await baseMoviesRepository.getRecommendationMovies(parameters);
  }
}
//
// class RecommendationParameters extends Equatable {
//   final int id;
//
//   const RecommendationParameters({required this.id});
//
//   @override
//   List<Object> get props => [id];
// }