import 'package:flutter/material.dart';

import '../../../models/listing_model.dart';

import './movie/genre_list_movie_fade.dart';
import './movie/genre_list_movie_title.dart';
import './movie/genre_list_movie_genres.dart';
import './movie/genre_list_movie_rating.dart';

class GenreListMovie extends StatelessWidget {
  const GenreListMovie({
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
            const GenreListMovieFade(
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
                  GenreListMovieTitle(
                    title: movie.title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GenreListMovieGenres(
                        title: movie.genre,
                      ),
                      GenreListMovieRating(
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
