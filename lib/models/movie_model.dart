class MovieModel {
  const MovieModel({
    required this.id,
    required this.title,
    required this.overview,
    required this.tagline,
    required this.rating,
    required this.genres,
    required this.date,
    required this.adult,
    required this.runtime,
    required this.revenue,
    required this.budget,
    required this.images,
    required this.backdrop,
    required this.poster,
  });

  final int id;
  final String title;
  final String overview;
  final String tagline;
  final String rating;
  final List<String> genres;
  final DateTime date;
  final bool adult;
  final double runtime;
  final double revenue;
  final double budget;
  final List<String>? images;
  final String backdrop;
  final String poster;

  String get genre {
    return genres.join(" • ");
  }
}
