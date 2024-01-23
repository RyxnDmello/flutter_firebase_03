import 'package:flutter/material.dart';

import '../models/home_model.dart';
import '../models/genre_model.dart';

import '../widgets/home/home_app_bar.dart';
import '../widgets/home/home_trending.dart';
import '../widgets/home/home_button.dart';
import '../widgets/home/home_genres.dart';
import '../widgets/home/home_upcoming.dart';
import '../widgets/home/home_popular.dart';

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
            movies: homeModel.trending,
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
                HomeTrending(
                  trending: homeModel.trending,
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
            HomeButton(
              image: "./lib/images/home/buttons/tv.png",
              color: const Color.fromARGB(255, 0, 0, 50),
              label: "Explore TV Series",
              isSolid: true,
              onTap: () {},
            ),
            const SizedBox(
              height: 12.5,
            ),
            HomeButton(
              image: "./lib/images/home/buttons/collection.png",
              color: const Color.fromARGB(255, 0, 0, 50),
              label: "Explore Collections",
              isSolid: false,
              onTap: () {},
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
            HomeUpcoming(
              upcoming: homeModel.upcoming,
            ),
            const SizedBox(
              height: 25,
            ),
            HomePopular(
              popular: homeModel.popular,
            ),
          ],
        ),
      ),
    );
  }
}
