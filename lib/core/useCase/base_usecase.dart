import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app_clean_architecture/core/error/failure.dart';

abstract class BaseUseCase<T,Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}
class NoParameters extends Equatable{
 const NoParameters();

  @override
  List<Object?> get props =>[];
}
class RecommendationParameters extends Equatable {
  final int id;

  const RecommendationParameters({required this.id});

  @override
  List<Object> get props => [id];
}