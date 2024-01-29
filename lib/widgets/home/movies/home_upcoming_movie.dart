import 'package:flutter/material.dart';

import '../catalogue/catalogue_details.dart';
import '../catalogue/details/catalogue_details_fade.dart';
import '../catalogue/details/catalogue_details_title.dart';
import '../catalogue/details/catalogue_details_genre.dart';
import '../catalogue/details/catalogue_details_rating.dart';

class HomeUpcomingMovie extends StatelessWidget {
  const HomeUpcomingMovie({
    required this.onSelectMovie,
    required this.rating,
    required this.image,
    required this.title,
    required this.genre,
    super.key,
  });

  final Future<void> Function() onSelectMovie;
  final String image;
  final String title;
  final String rating;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return CatalogueDetails(
      image: image,
      onSelect: onSelectMovie,
      shadowColor: Colors.black45,
      margin: const EdgeInsets.all(10),
      layout: Stack(
        children: [
          const CatalogueDetailsFade(
            height: 100,
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
                  fontSize: 20,
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
