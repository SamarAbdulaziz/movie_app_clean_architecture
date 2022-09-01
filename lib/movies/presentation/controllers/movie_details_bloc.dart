import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app_clean_architecture/core/useCase/base_usecase.dart';
import 'package:movies_app_clean_architecture/core/utiles/enums.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/movie_details.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/recommendation.dart';
import 'package:movies_app_clean_architecture/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_app_clean_architecture/movies/domain/usecases/get_movies_details_use_case.dart';
import 'package:movies_app_clean_architecture/movies/domain/usecases/get_recommendation_movies_use_case.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase, this.getRecommendationMoviesUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendationMovies);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));
    result.fold(
        (l) => emit(
              state.copyWith(
                  movieDetailsState: RequestState.error,
                  movieDetailsMessage: l.message),
            ),
        (r) => emit(state.copyWith(
            movieDetails: r, movieDetailsState: RequestState.loaded)));
  }

  final GetRecommendationMoviesUseCase getRecommendationMoviesUseCase;

  FutureOr<void> _getRecommendationMovies(GetMovieRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result = await getRecommendationMoviesUseCase(
        RecommendationParameters(id: event.id));
    result.fold(
        (l) => emit(
              state.copyWith(
                  recommendationState: RequestState.error,
                  recommendationMessage: l.message),
            ),
        (r) => emit(state.copyWith(
            recommendation: r, recommendationState: RequestState.loaded)));
  }
}
