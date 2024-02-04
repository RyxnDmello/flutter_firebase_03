import 'package:flutter/material.dart';

import '../catalogue/catalogue_icon.dart';
import '../catalogue/catalogue_product.dart';
import '../catalogue/product/catalogue_product_fade.dart';
import '../catalogue/product/catalogue_product_title.dart';
import '../catalogue/product/catalogue_product_genre.dart';
import '../catalogue/product/catalogue_product_rating.dart';

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
    return CatalogueProduct(
      image: image,
      onSelect: onSelectMovie,
      shadowColor: Colors.black45,
      layout: Stack(
        children: [
          const CatalogueProductFade(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 6.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CatalogueProductTitle(
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
                    CatalogueProductGenre(
                      genre: genre,
                      fontSize: 16,
                    ),
                    CatalogueProductRating(
                      rating: rating,
                      fontSize: 16,
                    ),
                  ],
                )
              ],
            ),
          ),
          const CatalogueIcon(
            size: 28,
          ),
        ],
      ),
    );
  }
}
