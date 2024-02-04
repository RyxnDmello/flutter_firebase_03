import 'package:flutter/material.dart';

import '../models/catalogue_model.dart';
import '../models/person_model.dart';
import '../models/genre_model.dart';

import '../widgets/home/home_app_bar.dart';
import '../widgets/home/home_trending_movies_catalogue.dart';
import '../widgets/home/home_trending_series_catalogue.dart';
import '../widgets/home/home_trending_people_catalogue.dart';
import '../widgets/home/home_popular_movies_catalogue.dart';
import '../widgets/home/home_popular_series_catalogue.dart';
import '../widgets/home/home_upcoming_movies_catalogue.dart';
import '../widgets/home/home_top_movies_catalogue.dart';
import '../widgets/home/home_collection_button.dart';
import '../widgets/home/home_genres_catalogue.dart';

import './genre.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _openGenreScreen({required GenreModel genre}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return GenreScreen(
            movies: catalogues.trendingMovies,
            genre: genre,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                HomeTrendingMoviesCatalogue(
                  trending: catalogues.trendingMovies,
                ),
                HomeAppBar(
                  onOpenSearch: () {},
                  onOpenSaved: () {},
                  onOpenShare: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            HomeGenresCatalogue(
              onSelectGenre: _openGenreScreen,
              genres: movieGenres,
            ),
            const SizedBox(
              height: 30,
            ),
            HomeCollectionButton(
              onTap: () {},
              label: "MY COLLECTIONS",
            ),
            const SizedBox(
              height: 30,
            ),
            HomeUpcomingMoviesCatalogue(
              upcoming: catalogues.upcomingMovies,
            ),
            const SizedBox(
              height: 30,
            ),
            HomePopularMoviesCatalogue(
              popular: catalogues.popularMovies,
            ),
            const SizedBox(
              height: 40,
            ),
            HomeTrendingSeriesCatalogue(
              trending: catalogues.trendingSeries,
            ),
            const SizedBox(
              height: 30,
            ),
            HomePopularSeriesCatalogue(
              popular: catalogues.popularSeries,
            ),
            const SizedBox(
              height: 40,
            ),
            HomeTrendingPeopleCatalogue(
              people: people,
            ),
            const SizedBox(
              height: 30,
            ),
            HomeTopMoviesCatalogue(
              tops: catalogues.topRatedMovies,
            ),
          ],
        ),
      ),
    );
  }
}
