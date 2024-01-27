import 'package:flutter/material.dart';

import '../models/home_model.dart';
import '../models/genre_model.dart';

import '../widgets/home/home_app_bar.dart';
import '../widgets/home/home_trending_movies.dart';
import '../widgets/home/home_upcoming_movies.dart';
import '../widgets/home/home_popular_movies.dart';
import '../widgets/home/home_trending_tv.dart';
import '../widgets/home/home_popular_tv.dart';
import '../widgets/home/home_genres.dart';

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
            movies: homeModel.trendingMovies,
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
                HomeTrendingMovies(
                  trending: homeModel.trendingMovies,
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
            HomeGenres(
              onSelectGenre: _openGenreScreen,
              genres: homeModel.genres,
            ),
            const SizedBox(
              height: 25,
            ),
            HomeUpcomingMovies(
              upcoming: homeModel.upcomingMovies,
            ),
            const SizedBox(
              height: 25,
            ),
            HomePopularMovies(
              popular: homeModel.popularMovies,
            ),
            const SizedBox(
              height: 25,
            ),
            HomeTrendingTV(
              trending: homeModel.trendingTV,
            ),
            const SizedBox(
              height: 25,
            ),
            HomePopularTV(
              popular: homeModel.popularTV,
            ),
          ],
        ),
      ),
    );
  }
}
