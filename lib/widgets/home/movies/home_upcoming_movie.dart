import 'package:flutter/material.dart';

import './upcoming/home_upcoming_movie_fade.dart';
import './upcoming/home_upcoming_movie_title.dart';
import './upcoming/home_upcoming_movie_genre.dart';
import './upcoming/home_upcoming_movie_rating.dart';

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
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 0),
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          children: [
            const HomeUpcomingFade(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
