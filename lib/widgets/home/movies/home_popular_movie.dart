import 'package:flutter/material.dart';

import '../catalogue/catalogue_details.dart';
import '../catalogue/details/catalogue_details_fade.dart';
import '../catalogue/details/catalogue_details_title.dart';
import '../catalogue/details/catalogue_details_genre.dart';
import '../catalogue/details/catalogue_details_rating.dart';

class HomePopularMovie extends StatelessWidget {
  const HomePopularMovie({
    required this.onSelectMovie,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
    super.key,
  });

  final Future<void> Function() onSelectMovie;
  final String image;
  final String title;
  final String genre;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return CatalogueDetails(
      image: image,
      onSelect: onSelectMovie,
      layout: Stack(
        children: [
          const CatalogueDetailsFade(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 6.5,
              right: 6.5,
              bottom: 6.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CatalogueDetailsTitle(
                  title: title,
                  fontSize: 16,
                ),
                const SizedBox(
                  height: 2.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CatalogueDetailsGenre(
                      genre: genre,
                      fontSize: 16,
                    ),
                    CatalogueDetailsRating(
                      rating: rating,
                      fontSize: 16,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
