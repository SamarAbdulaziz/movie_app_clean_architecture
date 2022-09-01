import 'package:dio/dio.dart';
import 'package:movies_app_clean_architecture/core/error/exceptions.dart';
import 'package:movies_app_clean_architecture/core/network/api_constant.dart';
import 'package:movies_app_clean_architecture/core/network/error_message_model.dart';
import 'package:movies_app_clean_architecture/core/useCase/base_usecase.dart';
import 'package:movies_app_clean_architecture/movies/data/model/movie_details_model.dart';
import 'package:movies_app_clean_architecture/movies/data/model/movie_model.dart';
import 'package:movies_app_clean_architecture/movies/data/model/recommendation_model.dart';
import 'package:movies_app_clean_architecture/movies/domain/repository/base_movie_repository.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovie();

  Future<List<MovieModel>> getPopularMovie();

  Future<List<MovieModel>> getTopRatedMovie();

  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters);

  Future<List<RecommendationModel>> getRecommendationMovies(
      RecommendationParameters parameters);
}

class MovieRemoteDataSource implements BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final response = await Dio().get(ApiConstants.nowPlayingMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
      // return response.data["results"]
      //     .map((e) => MovieModel.fromJson(e))
      //     .toList();
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovie() async {
    final response = await Dio().get(ApiConstants.popularMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
      // return response.data["results"]
      //     .map((e) => MovieModel.fromJson(e))
      //     .toList();
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovie() async {
    final response = await Dio().get(ApiConstants.topRatedMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
      // return response.data["results"]
      //     .map((e) => MovieModel.fromJson(e))
      //     .toList();
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final response =
        await Dio().get(ApiConstants.getMovieDetailsPath(parameters.movieId));
    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<RecommendationModel>> getRecommendationMovies(
      RecommendationParameters parameters) async {
    final response = await Dio()
        .get(ApiConstants.getRecommendationMoviesPath(parameters.id));
    if (response.statusCode == 200) {
      return List<RecommendationModel>.from((response.data['results'] as List).map((e) => RecommendationModel.fromJson(e)));

    } else {
      throw ServerException(errorMessageModel:ErrorMessageModel.fromJson( response.data));
    }
  }
}
