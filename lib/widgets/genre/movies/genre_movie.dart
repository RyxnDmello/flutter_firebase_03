import 'package:flutter/material.dart';

import '../../../models/listing_model.dart';

import './movie/genre_movie_fade.dart';
import './movie/genre_movie_title.dart';
import './movie/genre_movie_genres.dart';
import './movie/genre_movie_rating.dart';

class GenreMovie extends StatelessWidget {
  const GenreMovie({
    required this.onSelectMovie,
    required this.movie,
    super.key,
  });

  final void Function() onSelectMovie;
  final ListingMovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelectMovie,
      child: Container(
        height: 200,
        width: double.infinity,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              movie.image,
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        child: Stack(
          children: [
            const GenreMovieFade(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 6.5,
                right: 10,
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GenreMovieTitle(
                    title: movie.title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GenreMovieGenres(
                        title: movie.genre,
                      ),
                      GenreMovieRating(
                        rating: movie.rating,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
