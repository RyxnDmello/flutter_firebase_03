import 'package:flutter/material.dart';

import '../catalogue/catalogue_icon.dart';
import '../catalogue/catalogue_product.dart';
import '../catalogue/product/catalogue_product_fade.dart';
import '../catalogue/product/catalogue_product_title.dart';
import '../catalogue/product/catalogue_product_rating.dart';
import '../catalogue/product/catalogue_product_genre.dart';

class HomeTopSeries extends StatelessWidget {
  const HomeTopSeries({
    required this.onSelect,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
    super.key,
  });

  final Future<void> Function() onSelect;
  final String image;
  final String title;
  final String genre;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return CatalogueProduct(
      width: 350,
      image: image,
      onSelect: onSelect,
      shadowColor: Colors.black45,
      margin: const EdgeInsets.only(
        bottom: 10,
        top: 10,
      ),
      layout: Stack(
        children: [
          const CatalogueProductFade(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.5,
              right: 8.5,
              bottom: 6.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CatalogueProductTitle(
                  title: title,
                  fontSize: 22.5,
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
                    ),
                  ],
                )
              ],
            ),
          ),
          const CatalogueIcon(
            size: 35,
          ),
        ],
      ),
    );
  }
}
