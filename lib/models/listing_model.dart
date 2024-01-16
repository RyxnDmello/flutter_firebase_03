class ListingMovieModel {
  const ListingMovieModel({
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
}

const latest = <ListingMovieModel>[
  ListingMovieModel(
    id: "1",
    title: "Napoleon",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "6.453",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Napoleon",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "6.453",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Napoleon",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "6.453",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
  ),
];

const trending = <ListingMovieModel>[
  ListingMovieModel(
    id: "1",
    title: "Napoleon",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "6.453",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Napoleon",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "6.453",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Napoleon",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "6.453",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
  ),
];

const popular = <ListingMovieModel>[
  ListingMovieModel(
    id: "1",
    title: "Oppenheimer",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "8.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Oppenheimer",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "8.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Oppenheimer",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "8.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Oppenheimer",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "8.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Oppenheimer",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "8.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Oppenheimer",
    genres: [
      "History",
      "Romance",
      "Drama",
    ],
    rating: "8.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
  ),
];

const upcoming = <ListingMovieModel>[
  ListingMovieModel(
    id: "1",
    title: "Wonka",
    genres: [
      "Comedy",
      "Drama",
    ],
    rating: "7.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Wonka",
    genres: [
      "Comedy",
      "Drama",
    ],
    rating: "7.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Wonka",
    genres: [
      "Comedy",
      "Drama",
    ],
    rating: "7.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
  ),
  ListingMovieModel(
    id: "1",
    title: "Wonka",
    genres: [
      "Comedy",
      "Drama",
    ],
    rating: "7.5",
    date: "2024-10-20",
    image:
        "https://image.tmdb.org/t/p/original/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
  ),
];
