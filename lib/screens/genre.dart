import 'package:flutter/material.dart';

import '../models/genre_model.dart';

import '../models/catalogue/catalogue_product_model.dart';

import '../widgets/genre/genre_header.dart';
import '../widgets/genre/genre_app_bar.dart';
import '../widgets/genre/genre_title.dart';
import '../widgets/genre/genre_search.dart';
import '../widgets/genre/genre_movies.dart';

class GenreScreen extends StatefulWidget {
  const GenreScreen({
    required this.movies,
    required this.genre,
    super.key,
  });

  final List<CatalogueProductModel> movies;
  final GenreModel genre;

  @override
  State<GenreScreen> createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  List<CatalogueProductModel> _movies = [];

  @override
  void initState() {
    super.initState();
    _movies = widget.movies;
  }

  void _search({required String? input}) {
    if (input == null || input.isEmpty) {
      setState(() => _movies = widget.movies);
      return;
    }

    List<CatalogueProductModel> filteredMovies = [];

    for (final movie in widget.movies) {
      if (!movie.title.toLowerCase().startsWith(input)) continue;
      filteredMovies.add(movie);
    }

    setState(() => _movies = filteredMovies);
  }

  void _closeGenreScreen() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GenreHeader(
              height: 195,
              image: "./lib/images/genre/header.png",
              group: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GenreAppBar(
                    onBack: _closeGenreScreen,
                  ),
                  GenreTitle(
                    title: widget.genre.title,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GenreSearch(
                    onSearch: _search,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GenreMovies(
              trending: _movies,
            ),
          ],
        ),
      ),
    );
  }
}
