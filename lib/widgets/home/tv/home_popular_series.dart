import 'package:flutter/material.dart';

import './popular/home_popular_series_fade.dart';
import './popular/home_popular_series_title.dart';
import './popular/home_popular_series_genre.dart';
import './popular/home_popular_series_rating.dart';

class HomePopularSeries extends StatelessWidget {
  const HomePopularSeries({
    required this.isExpanded,
    required this.onSelectTV,
    required this.height,
    required this.title,
    required this.image,
    required this.genre,
    required this.rating,
    super.key,
  });

  final void Function() onSelectTV;
  final bool isExpanded;
  final double height;
  final String title;
  final String image;
  final String genre;
  final String rating;

  @override
  Widget build(BuildContext context) {
    Widget series = GestureDetector(
      onTap: onSelectTV,
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: height,
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
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        child: Stack(
          children: [
            const HomePopularSeriesFade(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 2.5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HomePopularSeriesTile(
                    title: title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HomePopularSeriesGenre(
                        genre: genre,
                      ),
                      HomePopularSeriesRating(
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

    if (!isExpanded) return series;

    return Expanded(
      child: series,
    );
  }
}
