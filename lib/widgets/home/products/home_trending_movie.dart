import 'package:flutter/material.dart';

import '../catalogue/catalogue_product.dart';
import '../catalogue/product/catalogue_product_fade.dart';
import '../catalogue/product/catalogue_product_title.dart';
import '../catalogue/product/catalogue_product_genre.dart';
import '../catalogue/product/catalogue_product_rating.dart';

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
    return CatalogueProduct(
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
          const CatalogueProductFade(
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
                CatalogueProductTitle(
                  title: title,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CatalogueProductGenre(
                      genre: genre,
                    ),
                    CatalogueProductRating(
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
