import 'package:flutter/material.dart';

import '../catalogue/catalogue_icon.dart';
import '../catalogue/catalogue_product.dart';
import '../catalogue/product/catalogue_product_fade.dart';
import '../catalogue/product/catalogue_product_title.dart';
import '../catalogue/product/catalogue_product_genre.dart';
import '../catalogue/product/catalogue_product_rating.dart';

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
    Widget series = CatalogueProduct(
      image: image,
      height: height,
      onSelect: onSelectTV,
      shadowColor: Colors.black45,
      layout: Stack(
        children: [
          CatalogueProductFade(
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
                CatalogueProductTitle(
                  title: title,
                  fontSize: isExpanded ? 18 : 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CatalogueProductGenre(
                      genre: genre,
                      fontSize: 18,
                    ),
                    CatalogueProductRating(
                      rating: rating,
                      fontSize: 18,
                      iconSize: 20,
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

    if (!isExpanded) return series;

    return Expanded(
      child: series,
    );
  }
}
