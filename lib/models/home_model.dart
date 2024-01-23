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
      name: "Action",
      image: "./lib/images/home/genres/action.png",
    ),
    GenreModel(
      id: 12,
      name: "Adventure",
      image: "./lib/images/home/genres/adventure.png",
    ),
    GenreModel(
      id: 16,
      name: "Animation",
      image: "./lib/images/home/genres/animation.png",
    ),
    GenreModel(
      id: 35,
      name: "Comedy",
      image: "./lib/images/home/genres/comedy.png",
    ),
    GenreModel(
      id: 80,
      name: "Crime",
      image: "./lib/images/home/genres/crime.png",
    ),
    GenreModel(
      id: 99,
      name: "Documentary",
      image: "./lib/images/home/genres/documentary.png",
    ),
    GenreModel(
      id: 18,
      name: "Drama",
      image: "./lib/images/home/genres/drama.png",
    ),
    GenreModel(
      id: 10751,
      name: "Family",
      image: "./lib/images/home/genres/family.png",
    ),
    GenreModel(
      id: 14,
      name: "Fantasy",
      image: "./lib/images/home/genres/fantasy.png",
    ),
    GenreModel(
      id: 36,
      name: "History",
      image: "./lib/images/home/genres/history.png",
    ),
    GenreModel(
      id: 17,
      name: "Horror",
      image: "./lib/images/home/genres/horror.png",
    ),
    GenreModel(
      id: 10402,
      name: "Music",
      image: "./lib/images/home/genres/music.png",
    ),
    GenreModel(
      id: 9648,
      name: "Mystery",
      image: "./lib/images/home/genres/mystery.png",
    ),
    GenreModel(
      id: 878,
      name: "Fiction",
      image: "./lib/images/home/genres/fiction.png",
    ),
    GenreModel(
      id: 10770,
      name: "TV Movie",
      image: "./lib/images/home/genres/tv.png",
    ),
    GenreModel(
      id: 10752,
      name: "War",
      image: "./lib/images/home/genres/war.png",
    ),
    GenreModel(
      id: 37,
      name: "Western",
      image: "./lib/images/home/genres/western.png",
    ),
  ],
);
