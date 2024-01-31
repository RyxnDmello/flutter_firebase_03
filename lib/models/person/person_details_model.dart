import 'package:flutter_dotenv/flutter_dotenv.dart';

class PersonDetailsModel {
  const PersonDetailsModel({
    required this.id,
    required this.name,
    required this.popularity,
    required this.profession,
    required this.image,
  });

  final int id;
  final String name;
  final double popularity;
  final String profession;
  final String image;

  String get imageURI {
    return "${dotenv.env["IMAGE_API"]}$image";
  }
}
