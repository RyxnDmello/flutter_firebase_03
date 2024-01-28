import 'package:flutter/material.dart';

import '../catalogue/catalogue_details.dart';
import '../catalogue/details/catalogue_details_fade.dart';
import '../catalogue/details/catalogue_details_title.dart';
import '../catalogue/details/catalogue_details_genre.dart';
import '../catalogue/details/catalogue_details_rating.dart';

class HomeTrendingMovie extends StatelessWidget {
  const HomeTrendingMovie({
    required this.onSelectMovie,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
    super.key,
  });

  final Future<void> Function() onSelectMovie;
  final String rating;
  final String image;
  final String title;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return CatalogueDetails(
      image: image,
      shadowBlur: 10,
      borderRadius: 0,
      onSelect: onSelectMovie,
      shadowColor: Colors.black45,
      shadowOffset: const Offset(0, 5),
      margin: const EdgeInsets.only(
        bottom: 15,
      ),
      layout: Stack(
        children: [
          const CatalogueDetailsFade(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              right: 10,
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CatalogueDetailsTitle(
                  title: title,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CatalogueDetailsGenre(
                      genre: genre,
                    ),
                    CatalogueDetailsRating(
                      rating: rating,
                      iconSize: 24,
                      fontSize: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
