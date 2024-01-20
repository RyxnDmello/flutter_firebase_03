import 'package:flutter/material.dart';

import './movie/home_upcoming_movie_image.dart';
import './movie/home_upcoming_movie_title.dart';
import './movie/home_upcoming_movie_genre.dart';
import './movie/home_upcoming_movie_rating.dart';

class HomeUpcomingMovie extends StatelessWidget {
  const HomeUpcomingMovie({
    required this.onTap,
    required this.rating,
    required this.image,
    required this.title,
    required this.genre,
    super.key,
  });

  final void Function() onTap;
  final String image;
  final String title;
  final String rating;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(
          bottom: 10,
          right: 5,
          left: 5,
          top: 10,
        ),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 5),
              blurRadius: 5,
            )
          ],
          color: const Color.fromARGB(255, 0, 0, 25),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeUpcomingMovieImage(
              image: image,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 6,
                right: 8,
                left: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HomeUpcomingMovieTitle(
                    title: title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HomeUpcomingMovieGenre(
                        genre: genre,
                      ),
                      HomeUpcomingMovieRating(
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
