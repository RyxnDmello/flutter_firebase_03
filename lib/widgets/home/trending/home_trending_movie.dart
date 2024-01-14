import 'package:flutter/material.dart';

import './movie/home_trending_movie_title.dart';
import './movie/home_trending_movie_rating.dart';

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
        margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
            opacity: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 5),
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadiusDirectional.circular(5),
          color: Colors.black,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(225, 0, 0, 0),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HomeTrendingMovieTitle(
                        title: title,
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
