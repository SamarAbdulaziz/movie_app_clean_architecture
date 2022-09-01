import 'package:equatable/equatable.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/geners.dart';

 class MovieDetails extends Equatable {
  final int id;
  final String backgroundImage;
  final String title;
  final String overview;
  final String releaseDate;
  final double voteAverage;
  final int runtime;
  final List<Genres> genres;

  const MovieDetails(
      {required this.id,
      required this.backgroundImage,
      required this.title,
      required this.overview,
      required this.releaseDate,
      required this.voteAverage,
      required this.runtime,
      required this.genres});

  @override
  List<Object> get props => [
        id,
        backgroundImage,
        title,
        overview,
        releaseDate,
        voteAverage,
        runtime,
        genres,
      ];
}
