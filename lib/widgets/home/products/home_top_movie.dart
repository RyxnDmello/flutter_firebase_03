import 'package:flutter/material.dart';

import '../catalogue/catalogue_icon.dart';
import '../catalogue/catalogue_product.dart';
import '../catalogue/product/catalogue_product_fade.dart';
import '../catalogue/product/catalogue_product_title.dart';
import '../catalogue/product/catalogue_product_genre.dart';
import '../catalogue/product/catalogue_product_rating.dart';

class HomeTopMovie extends StatelessWidget {
  const HomeTopMovie({
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
    super.key,
  });

  final String image;
  final String title;
  final String genre;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return CatalogueProduct(
      onSelect: () async {},
      image: image,
      borderRadius: 0,
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      layout: Stack(
        children: [
          const CatalogueProductFade(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 6.5,
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
                      iconSize: 22.5,
                      fontSize: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const CatalogueIcon(
            size: 40,
          ),
        ],
      ),
    );
  }
}
