import 'package:flutter/material.dart';

import './details/movie_details_name.dart';
import './details/movie_details_genre.dart';
import './details/movie_details_rating.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({
    required this.height,
    required this.rating,
    required this.genre,
    required this.name,
    super.key,
  });

  final String genre;
  final double height;
  final double rating;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 20,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "./lib/images/register/background.png",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.elliptical(20, 20),
          bottomLeft: Radius.elliptical(20, 20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MovieDetailsName(
            name: name,
          ),
          MovieDetailsGenre(
            genre: genre,
          ),
          const SizedBox(
            height: 6,
          ),
          MovieDetailsRating(
            rating: rating,
          ),
        ],
      ),
    );
  }
}
