import './catalogue/catalogue_product_model.dart';

class CatalogueModel {
  const CatalogueModel({
    required this.trendingMovies,
    required this.upcomingMovies,
    required this.popularMovies,
    required this.trendingTV,
    required this.popularTV,
  });

  final List<CatalogueProductModel> trendingMovies;
  final List<CatalogueProductModel> upcomingMovies;
  final List<CatalogueProductModel> popularMovies;
  final List<CatalogueProductModel> trendingTV;
  final List<CatalogueProductModel> popularTV;
}

const catalogues = CatalogueModel(
  trendingMovies: [
    CatalogueProductModel(
      id: 1,
      image: "/jXJxMcVoEuXzym3vFnjqDW4ifo6.jpg",
      title: "Aquaman",
      rating: "6.9",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/meyhnvssZOPPjud4F1CjOb4snET.jpg",
      title: "Migration",
      rating: "7.25",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/ehumsuIBbgAe1hg343oszCLrAfI.jpg",
      title: "Wish",
      rating: "6.5",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/rz8GGX5Id2hCW1KzAIY4xwbQw1w.jpg",
      title: "Lift",
      rating: "8.25",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
  ],
  upcomingMovies: [
    CatalogueProductModel(
      id: 1,
      image: "/yOm993lsJyPmBodlYjgpPwBjXP9.jpg",
      title: "Wonka",
      rating: "6.5",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/a0GM57AnJtNi7lMOCamniiyV10W.jpg",
      title: "Poor Things",
      rating: "7.6",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/h0oBqUpax591vOacpBsDJ8cynjk.jpg",
      title: "君たちはどう生きるか",
      rating: "7.6",
      language: "Chinese",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/kWyQh9fCrgcMfhqZmqtp89Q0TrT.jpg",
      title: "Anyone But You",
      rating: "7.6",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
  ],
  popularMovies: [
    CatalogueProductModel(
      id: 1,
      image: "/tLxjbT5ROZRwYcpNT3nfQbqkApk.jpg",
      title: "The Marvels",
      rating: "8.4",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/ba9TgAO4I8RyA2LljzR3MspHaM9.jpg",
      title: "Attack",
      rating: "8.4",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/adNMDatnEnIEo4LUo1KyhouP6VA.jpg",
      title: "60 Minutes",
      rating: "5.6",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/yl2GfeCaPoxChcGyM5p7vYp1CKS.jpg",
      title: "Role Play",
      rating: "7.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
  ],
  trendingTV: [
    CatalogueProductModel(
      id: 1,
      image: "/menEyCOdkjXqwpJy3cwOH8kfZrj.jpg",
      title: "Masters of the Air",
      rating: "7.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/nj06Yo0yVzI7jx6novjyGOyNQKC.jpg",
      title: "Griselda",
      rating: "7.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/jp84f3bQg88jP5VXMGO5orYidIg.jpg",
      title: "Expats",
      rating: "6.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
  ],
  popularTV: [
    CatalogueProductModel(
      id: 1,
      image: "/shJhgNuC2a4hPdqvm8IDXFvYwLx.jpg",
      title: "This is Us",
      rating: "6.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/vJIdVmdZevYauXkbQqSUTZlN4Kr.jpg",
      title: "Dr. Kildare",
      rating: "6.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/9AeiA1XtP5sel2tAf9LaGeUjhDb.jpg",
      title: "Brooklyn 99",
      rating: "8.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/j1csA5FdMJjcmI19Hk3dmoTCfqE.jpg",
      title: "White Collar",
      rating: "8.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
    CatalogueProductModel(
      id: 1,
      image: "/1mMF5mW1St3nfePog4gDLiRWuPN.jpg",
      title: "Angel",
      rating: "8.8",
      language: "English",
      genres: ["Action", "Comedy", "Drama"],
    ),
  ],
);
