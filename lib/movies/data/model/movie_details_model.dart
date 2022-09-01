import 'package:movies_app_clean_architecture/movies/data/model/genres_model.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.id,
      required super.backgroundImage,
      required super.title,
      required super.overview,
      required super.releaseDate,
      required super.voteAverage,
      required super.runtime,
      required super.genres});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      id: json['id'],
      backgroundImage: json['backdrop_path']??"/mgmewe5TKTEI2S8jSo306UcP0x3.jpg",
      title: json['title'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'].toDouble(),
      runtime: json['runtime'],
      genres:List<GenresModel>.from(json['genres'].map((e)=>GenresModel.fromJson(e))),
     //todo try this line
     // genres:json['genres'].map((e)=>GenresModel.fromJson(e)).toList(),
    );
  }
}
