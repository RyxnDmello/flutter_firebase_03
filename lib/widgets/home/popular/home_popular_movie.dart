import 'package:flutter/material.dart';

import './movie/home_popular_movie_title.dart';
import './movie/home_popular_movie_genre.dart';
import './movie/home_popular_movie_rating.dart';
import './movie/home_popular_movie_fade.dart';

class HomePopularMovie extends StatelessWidget {
  const HomePopularMovie({
    required this.onTap,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
    super.key,
  });

  final void Function() onTap;
  final String image;
  final String title;
  final String genre;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(200, 0, 0, 0),
              offset: Offset(0, 5),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        child: Stack(
          children: [
            const HomePopularMovieFade(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HomePopularMovieTitle(
                    title: title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HomePopularMovieGenre(
                        genre: genre,
                      ),
                      HomePopularMovieRating(
                        rating: rating,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
