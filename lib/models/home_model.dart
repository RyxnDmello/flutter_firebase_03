import './listing_model.dart';
import './genre_model.dart';

class HomeModel {
  const HomeModel({
    required this.trending,
    required this.upcoming,
    required this.popular,
    required this.genres,
  });

  final List<ListingMovieModel> trending;
  final List<ListingMovieModel> upcoming;
  final List<ListingMovieModel> popular;
  final List<GenreModel> genres;
}

const homeModel = HomeModel(
  trending: [
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
      image: "/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
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
      image: "/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
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
      image: "/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
    ),
  ],
  upcoming: [
    ListingMovieModel(
      id: "1",
      title: "Wonka",
      genres: [
        "Comedy",
        "Drama",
      ],
      rating: "7.5",
      date: "2024-10-20",
      image: "/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
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
      image: "/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
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
      image: "/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
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
      image: "/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
    ),
  ],
  popular: [
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
      image: "/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
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
      image: "/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
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
      image: "/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
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
      image: "/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
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
      image: "/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
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
      image: "/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg",
    ),
  ],
  genres: [
    GenreModel(
      id: 28,
      title: "Action",
    ),
    GenreModel(
      id: 12,
      title: "Adventure",
    ),
    GenreModel(
      id: 16,
      title: "Animation",
    ),
    GenreModel(
      id: 35,
      title: "Comedy",
    ),
    GenreModel(
      id: 80,
      title: "Crime",
    ),
    GenreModel(
      id: 99,
      title: "Documentary",
    ),
    GenreModel(
      id: 18,
      title: "Drama",
    ),
    GenreModel(
      id: 10751,
      title: "Family",
    ),
    GenreModel(
      id: 14,
      title: "Fantasy",
    ),
    GenreModel(
      id: 36,
      title: "History",
    ),
    GenreModel(
      id: 17,
      title: "Horror",
    ),
    GenreModel(
      id: 10402,
      title: "Music",
    ),
    GenreModel(
      id: 9648,
      title: "Mystery",
    ),
    GenreModel(
      id: 878,
      title: "Fiction",
    ),
    GenreModel(
      id: 10770,
      title: "TV Movie",
    ),
    GenreModel(
      id: 10752,
      title: "War",
    ),
    GenreModel(
      id: 37,
      title: "Western",
    ),
  ],
);
