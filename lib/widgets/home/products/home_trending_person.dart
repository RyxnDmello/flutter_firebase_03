import 'package:flutter/material.dart';

import '../catalogue/catalogue_icon.dart';
import '../catalogue/catalogue_product.dart';
import '../catalogue/product/catalogue_product_fade.dart';
import '../catalogue/product/catalogue_product_title.dart';

class HomeTrendingPerson extends StatelessWidget {
  const HomeTrendingPerson({
    required this.image,
    required this.profession,
    required this.popularity,
    required this.name,
    super.key,
  });

  final String profession;
  final double popularity;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return CatalogueProduct(
      onSelect: () async {},
      shadowColor: Colors.black45,
      image: image,
      width: 150,
      layout: Stack(
        children: [
          const CatalogueProductFade(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CatalogueProductTitle(
                  title: name,
                  fontSize: 18,
                ),
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
