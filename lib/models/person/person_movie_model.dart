import 'package:flutter_dotenv/flutter_dotenv.dart';

class PersonMovieModel {
  const PersonMovieModel({
    required this.id,
    required this.title,
    required this.overview,
    required this.genres,
    required this.poster,
    required this.backdrop,
    required this.rating,
    required this.date,
    required this.type,
  });

  final int id;
  final String title;
  final String overview;
  final List<String> genres;
  final String poster;
  final String backdrop;
  final String rating;
  final String date;
  final String type;

  String get backdropURI {
    return "${dotenv.env["IMAGE_API"]}$backdrop";
  }

  String get posterURI {
    return "${dotenv.env["IMAGE_API"]}$poster";
  }
}
