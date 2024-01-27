import 'package:flutter_dotenv/flutter_dotenv.dart';

class CatalogueMovieModel {
  const CatalogueMovieModel({
    required this.id,
    required this.title,
    required this.genres,
    required this.rating,
    required this.image,
    required this.date,
  });

  final String id;
  final String title;
  final List<String> genres;
  final String rating;
  final String image;
  final String date;

  String get genre {
    return genres.join(" • ");
  }

  String get imageURI {
    return "${dotenv.env["IMAGE_API"]}$image";
  }
}
