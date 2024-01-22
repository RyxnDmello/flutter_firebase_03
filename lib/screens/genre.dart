import 'package:flutter/material.dart';

import '../models/listing_model.dart';
import '../models/genre_model.dart';

import '../widgets/genre/genre_header.dart';
import '../widgets/genre/genre_name.dart';
import '../widgets/genre/genre_list.dart';

class GenreScreen extends StatefulWidget {
  const GenreScreen({
    required this.movies,
    required this.genre,
    super.key,
  });

  final List<ListingMovieModel> movies;
  final GenreModel genre;

  @override
  State<GenreScreen> createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  List<ListingMovieModel> _movies = [];

  @override
  void initState() {
    super.initState();
    _movies = widget.movies;
  }

  void _search({required String search}) {
    List<ListingMovieModel> filteredMovies = [];

    for (final movie in widget.movies) {
      if (!movie.title.toLowerCase().startsWith(search)) continue;
      filteredMovies.add(movie);
    }

    setState(() => _movies = filteredMovies);
  }

  void _default() {
    setState(() => _movies = widget.movies);
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
              onBack: _closeGenreScreen,
              onDefault: _default,
              onSearch: _search,
            ),
            const SizedBox(
              height: 25,
            ),
            GenreName(
              name: widget.genre.name,
            ),
            const SizedBox(
              height: 15,
            ),
            GenreList(
              trending: _movies,
            ),
          ],
        ),
      ),
    );
  }
}
