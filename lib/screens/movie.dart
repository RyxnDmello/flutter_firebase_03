import 'package:flutter/material.dart';

import '../widgets/movie/movie_app_bar.dart';
import '../widgets/movie/movie_details.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  void _closeMovieScreen() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                const MovieDetails(
                  genre: "Action • Adventure",
                  name: "Wonder Woman",
                  rating: 7.5,
                  height: 450,
                ),
                MovieAppBar(
                  onBack: _closeMovieScreen,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
