import 'package:flutter/material.dart';

import '../catalogue/catalogue_details.dart';
import '../catalogue/details/catalogue_details_fade.dart';
import '../catalogue/details/catalogue_details_title.dart';
import '../catalogue/details/catalogue_details_genre.dart';
import '../catalogue/details/catalogue_details_rating.dart';

class HomePopularSeries extends StatelessWidget {
  const HomePopularSeries({
    required this.isExpanded,
    required this.onSelectTV,
    required this.fadeHeight,
    required this.height,
    required this.title,
    required this.image,
    required this.genre,
    required this.rating,
    super.key,
  });

  final Future<void> Function() onSelectTV;
  final bool isExpanded;
  final double fadeHeight;
  final double height;
  final String title;
  final String image;
  final String genre;
  final String rating;

  @override
  Widget build(BuildContext context) {
    Widget series = CatalogueDetails(
      image: image,
      height: height,
      onSelect: onSelectTV,
      shadowColor: Colors.black45,
      layout: Stack(
        children: [
          CatalogueDetailsFade(
            height: fadeHeight,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CatalogueDetailsTitle(
                  title: title,
                  fontSize: isExpanded ? 18 : 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CatalogueDetailsGenre(
                      genre: genre,
                      fontSize: 18,
                    ),
                    CatalogueDetailsRating(
                      rating: rating,
                      fontSize: 18,
                      iconSize: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );

    if (!isExpanded) return series;

    return Expanded(
      child: series,
    );
  }
}
