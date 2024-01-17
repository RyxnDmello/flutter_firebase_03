import 'package:flutter/material.dart';

import '../../models/genre_model.dart';

import './genres/home_genres_title.dart';
import './genres/home_genres_button.dart';

class HomeGenres extends StatelessWidget {
  const HomeGenres({
    required this.genres,
    super.key,
  });

  final List<GenreModel> genres;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const HomeGenresTitle(
          title: "Genres",
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 55,
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: genres.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
            ),
            itemBuilder: (context, index) {
              return HomeGenresButton(
                genre: genres[index],
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
          ),
        ),
      ],
    );
  }
}
