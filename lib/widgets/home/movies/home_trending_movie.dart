import 'package:flutter/material.dart';

import './trending/home_trending_movie_title.dart';
import './trending/home_trending_movie_genre.dart';
import './trending/home_trending_movie_rating.dart';
import './trending/home_trending_movie_fade.dart';

class HomeTrendingMovie extends StatelessWidget {
  const HomeTrendingMovie({
    required this.onTap,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
    super.key,
  });

  final void Function() onTap;
  final String rating;
  final String image;
  final String title;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(
          bottom: 15,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 5),
              blurRadius: 10,
            ),
          ],
          color: Colors.black,
        ),
        child: Stack(
          children: [
            const HomeTrendingMovieFade(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HomeTrendingMovieTitle(
                    title: title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HomeTrendingMovieGenre(
                        genre: genre,
                      ),
                      HomeTrendingMovieRating(
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
