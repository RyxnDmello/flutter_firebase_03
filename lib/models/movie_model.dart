import 'package:pixel_flix/models/genre_model.dart';

class MovieModel {
  const MovieModel({
    required this.title,
    required this.tagline,
    required this.overview,
    required this.genres,
    required this.rating,
    required this.language,
    required this.runtime,
    required this.backdrop,
    required this.poster,
    required this.revenue,
    required this.status,
    required this.adult,
  });

  final String title;
  final String tagline;
  final String overview;
  final List<GenreModel> genres;
  final double rating;
  final String language;
  final double runtime;
  final String backdrop;
  final String poster;
  final double revenue;
  final String status;
  final bool adult;
}
