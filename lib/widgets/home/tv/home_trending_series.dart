import 'package:flutter/material.dart';

import './trending/home_trending_series_title.dart';
import './trending/home_trending_series_genre.dart';
import './trending/home_trending_series_rating.dart';

class HomeTrendingSeries extends StatelessWidget {
  const HomeTrendingSeries({
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
    super.key,
  });

  final String title;
  final String genre;
  final String image;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          margin: const EdgeInsets.only(top: 5),
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
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(
                bottom: 15,
                right: 20,
                left: 20,
              ),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(2.5, 2.5),
                    blurRadius: 5,
                  )
                ],
                color: const Color.fromARGB(150, 0, 0, 0),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HomeTrendingSeriesTitle(
                    title: title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HomeTrendingSeriesGenre(
                        genre: genre,
                      ),
                      HomeTrendingSeriesRating(
                        rating: rating,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
