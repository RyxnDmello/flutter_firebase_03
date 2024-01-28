import 'package:flutter/material.dart';

import '../catalogue/catalogue_details.dart';
import '../catalogue/details/catalogue_details_genre.dart';
import '../catalogue/details/catalogue_details_rating.dart';
import '../catalogue/details/catalogue_details_title.dart';

class HomeTrendingSeries extends StatelessWidget {
  const HomeTrendingSeries({
    required this.onSelectTV,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
    super.key,
  });

  final Future<void> Function() onSelectTV;
  final String title;
  final String genre;
  final String image;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CatalogueDetails(
          height: 300,
          image: image,
          layout: null,
          borderRadius: 0,
          onSelect: onSelectTV,
          shadowColor: Colors.black45,
          margin: const EdgeInsets.only(
            top: 5,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(
                bottom: 15,
                right: 20,
                left: 20,
              ),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(2.5, 2.5),
                    blurRadius: 5,
                  )
                ],
                color: const Color.fromARGB(150, 0, 0, 0),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: CatalogueDetailsTitle(
                      title: title,
                    ),
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
        )
      ],
    );
  }
}
