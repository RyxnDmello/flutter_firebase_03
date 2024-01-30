import 'package:flutter/material.dart';

import './product/genre_catalogue_product_fade.dart';
import './product/genre_catalogue_product_title.dart';
import './product/genre_catalogue_product_genre.dart';
import './product/genre_catalogue_product_rating.dart';

class GenreCatalogueProduct extends StatelessWidget {
  const GenreCatalogueProduct({
    required this.onSelectMovie,
    required this.title,
    required this.image,
    required this.genre,
    required this.rating,
    super.key,
  });

  final Future<void> Function() onSelectMovie;
  final String title;
  final String image;
  final String genre;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelectMovie,
      child: Container(
        height: 200,
        width: double.infinity,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        child: Stack(
          children: [
            const GenreCatalogueProductFade(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 2.5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GenreCatalogueProductTitle(
                    title: title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GenreCatalogueProductGenre(
                        genre: genre,
                      ),
                      GenreCatalogueProductRating(
                        rating: rating,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
