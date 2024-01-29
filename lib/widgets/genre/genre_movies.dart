import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './movies/genre_movie.dart';

class GenreMovies extends StatelessWidget {
  const GenreMovies({
    required this.trending,
    super.key,
  });

  final List<CatalogueProductModel> trending;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: trending.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      itemBuilder: (context, index) {
        return GenreMovie(
          title: trending[index].title,
          image: trending[index].imageURI,
          rating: trending[index].rating,
          genre: trending[index].genre,
          onSelectMovie: () {},
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 15,
        );
      },
    );
  }
}
