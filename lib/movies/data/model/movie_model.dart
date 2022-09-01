import 'package:movies_app_clean_architecture/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.backgroundImage,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      backgroundImage: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      overview: json['overview'],
      voteAverage: json['vote_average'].toDouble(),
      releaseDate: json['release_date'],
    );
  }
}
