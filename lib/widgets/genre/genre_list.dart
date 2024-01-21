import 'package:flutter/material.dart';

import '../../models/listing_model.dart';

import './list/genre_list_movie.dart';

class GenreList extends StatelessWidget {
  const GenreList({
    required this.trending,
    super.key,
  });

  final List<ListingMovieModel> trending;

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
        return GenreListMovie(
          onSelectMovie: () {},
          movie: trending[index],
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
