import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './catalogue/catalogue_title.dart';

import './products/home_popular_movie.dart';

class HomePopularMoviesCatalogue extends StatelessWidget {
  const HomePopularMoviesCatalogue({
    required this.popular,
    super.key,
  });

  final List<CatalogueProductModel> popular;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CatalogueTitle(
            title: "Popular Movies",
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.25,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
            ),
            itemCount: popular.length,
            itemBuilder: (context, index) {
              return HomePopularMovie(
                title: popular[index].title,
                image: popular[index].imageURI,
                genre: popular[index].genres[0],
                rating: popular[index].rating,
                onSelectMovie: () async {},
              );
            },
          ),
        ],
      ),
    );
  }
}
