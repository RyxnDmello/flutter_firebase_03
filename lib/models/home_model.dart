import 'catalogue_model.dart';
import './genre_model.dart';

class HomeModel {
  const HomeModel({
    required this.trendingMovies,
    required this.upcomingMovies,
    required this.popularMovies,
    required this.trendingTV,
    required this.popularTV,
    required this.genres,
  });

  final List<CatalogueMovieModel> trendingMovies;
  final List<CatalogueMovieModel> upcomingMovies;
  final List<CatalogueMovieModel> popularMovies;
  final List<CatalogueMovieModel> trendingTV;
  final List<CatalogueMovieModel> popularTV;
  final List<GenreModel> genres;
}

const homeModel = HomeModel(
  trendingMovies: [
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
  upcomingMovies: [
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
  popularMovies: [
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
    CatalogueMovieModel(
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
  trendingTV: [
    CatalogueMovieModel(
      id: "1",
      title: "Echo",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/u3ySnWqSjM3jedYgJZTR7RWRDDm.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Echo",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/u3ySnWqSjM3jedYgJZTR7RWRDDm.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Echo",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/u3ySnWqSjM3jedYgJZTR7RWRDDm.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Echo",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/u3ySnWqSjM3jedYgJZTR7RWRDDm.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Echo",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/u3ySnWqSjM3jedYgJZTR7RWRDDm.jpg",
    ),
  ],
  popularTV: [
    CatalogueMovieModel(
      id: "1",
      title: "Fuzuê",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/2Bkqjc9tNWo3KLr1aRYyJ7vMQtM.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Fuzuê",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/2Bkqjc9tNWo3KLr1aRYyJ7vMQtM.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Fuzuê",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/2Bkqjc9tNWo3KLr1aRYyJ7vMQtM.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Fuzuê",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/2Bkqjc9tNWo3KLr1aRYyJ7vMQtM.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Fuzuê",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/2Bkqjc9tNWo3KLr1aRYyJ7vMQtM.jpg",
    ),
    CatalogueMovieModel(
      id: "1",
      title: "Fuzuê",
      genres: [
        "Action",
        "Adventure",
      ],
      rating: "6.2",
      date: "2024-10-20",
      image: "/2Bkqjc9tNWo3KLr1aRYyJ7vMQtM.jpg",
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
