import 'package:movies_app_clean_architecture/movies/domain/entities/geners.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/movie_details.dart';
import 'package:movies_app_clean_architecture/movies/domain/entities/recommendation.dart';

MovieDetails movieDetailDummy =  const MovieDetails(
  backgroundImage: "/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg",
  genres: [
    Genres(name: 'Family', id: 10751),
  ],
  id: 438148,
  overview:
      "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
  releaseDate: "2022-06-29",
  runtime: 87,
  title: "Minions: The Rise of Gru",
  voteAverage: 7.8,
);

List<Recommendation> recommendationDummy = [
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backgroundImage: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
];
