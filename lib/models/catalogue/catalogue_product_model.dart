import 'package:flutter_dotenv/flutter_dotenv.dart';

class CatalogueProductModel {
  const CatalogueProductModel({
    required this.id,
    required this.title,
    required this.genres,
    required this.language,
    required this.rating,
    required this.image,
  });

  final int id;
  final String title;
  final List<String> genres;
  final String language;
  final String rating;
  final String image;

  String get genre {
    return genres.join(" • ");
  }

  String get imageURI {
    return "${dotenv.env["IMAGE_API"]}$image";
  }
}
