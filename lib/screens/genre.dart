import 'package:flutter/material.dart';

import '../models/genre_model.dart';

import '../models/catalogue/catalogue_product_model.dart';

import '../widgets/genre/genre_background.dart';
import '../widgets/genre/genre_app_bar.dart';
import '../widgets/genre/genre_title.dart';
import '../widgets/genre/genre_search.dart';
import '../widgets/genre/genre_catalogue.dart';

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
  String _background = "";

  @override
  void initState() {
    super.initState();

    _movies = _defaultCatalogue();
    _background = widget.movies.first.imageURI;
  }

  List<CatalogueProductModel> _defaultCatalogue() {
    List<CatalogueProductModel> catalogue = [];

    for (final entry in widget.movies.asMap().entries) {
      if (entry.key == 0) continue;
      catalogue.add(entry.value);
    }

    catalogue.add(widget.movies.first);
    return catalogue;
  }

  void _search({required String? input}) {
    if (input == null || input.isEmpty) {
      setState(() {
        _movies = _defaultCatalogue();
        _background = widget.movies.first.imageURI;
      });

      return;
    }

    List<CatalogueProductModel> filteredMovies = [];

    for (final movie in widget.movies) {
      if (!movie.title.toLowerCase().startsWith(input.toLowerCase())) continue;
      filteredMovies.add(movie);
    }

    setState(() {
      _movies = filteredMovies;
      _background = _movies.first.imageURI;
    });
  }

  void _closeGenreScreen() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          bottom: 25,
        ),
        child: Stack(
          children: [
            GenreBackground(
              background: _background,
              height: 400,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GenreAppBar(
                  onBack: _closeGenreScreen,
                ),
                GenreTitle(
                  title: widget.genre.title,
                ),
                const SizedBox(
                  height: 25,
                ),
                GenreSearch(
                  onSearch: _search,
                ),
                const SizedBox(
                  height: 25,
                ),
                GenreCatalogue(
                  trending: _movies,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
