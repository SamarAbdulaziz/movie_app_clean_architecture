import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backgroundImage;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backgroundImage,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object> get props => [
        id,
        title,
        backgroundImage,
        genreIds,
        overview,
        voteAverage,
        releaseDate,
      ];
}
