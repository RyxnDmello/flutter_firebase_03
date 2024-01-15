import 'package:flutter/material.dart';

import './movie/home_upcoming_movie_image.dart';
import './movie/home_upcoming_movie_title.dart';
import './movie/home_upcoming_movie_date.dart';
import './movie/home_upcoming_movie_rating.dart';

class HomeUpcomingMovie extends StatelessWidget {
  const HomeUpcomingMovie({
    required this.rating,
    required this.image,
    required this.title,
    required this.date,
    super.key,
  });

  final String image;
  final String title;
  final String rating;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomeUpcomingMovieImage(
          image: image,
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
            left: 10,
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
                  HomeUpcomingMovieDate(
                    date: date,
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
    );
  }
}
