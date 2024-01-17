class GenreModel {
  const GenreModel({
    required this.id,
    required this.name,
    required this.image,
  });

  final int id;
  final String name;
  final String image;
}

const genres = <GenreModel>[
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
];
