import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app_clean_architecture/core/services/services_locator.dart';
import 'package:movies_app_clean_architecture/movies/presentation/components/movie_details_content.dart';
import 'package:movies_app_clean_architecture/movies/presentation/controllers/movie_details_bloc.dart';

class MovieDetailScreen extends StatelessWidget {
  final int id;

  const MovieDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieDetailsBloc>()
        ..add(GetMovieDetailsEvent(id))
        ..add(GetMovieRecommendationEvent(id)),
      lazy: false,
      child: const Scaffold(
        body: MovieDetailContent(
            // movie: movieDetailDummy,
            // recommendations: recommendationDummy,
            ),
      ),
    );
  }
}
