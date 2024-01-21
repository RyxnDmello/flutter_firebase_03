import 'package:flutter/material.dart';

import '../models/listing_model.dart';
import '../models/genre_model.dart';

import '../widgets/genre/genre_app_bar.dart';
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
            GenreAppBar(
              onBack: _closeGenreScreen,
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
              trending: widget.movies,
            ),
          ],
        ),
      ),
    );
  }
}
