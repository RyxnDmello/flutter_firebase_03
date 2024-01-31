import 'package:flutter/material.dart';

import '../../models/genre_model.dart';

import './genres/home_genres_title.dart';
import './genres/home_genres_button.dart';

class HomeGenresCatalogue extends StatelessWidget {
  const HomeGenresCatalogue({
    required this.onSelectGenre,
    required this.genres,
    super.key,
  });

  final void Function({required GenreModel genre}) onSelectGenre;
  final List<GenreModel> genres;

  @override
  Widget build(BuildContext context) {
    List<List<GenreModel>> split() {
      List<List<GenreModel>> splits = [[], []];

      for (int i = 0; i < genres.length; i++) {
        if (i / genres.length < 0.5) {
          splits[0].add(genres[i]);
          continue;
        }

        splits[1].add(genres[i]);
      }

      for (final split in splits) {
        split.shuffle();
      }

      return splits;
    }

    final splits = split();

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
        GenreList(
          onSelect: onSelectGenre,
          genres: splits[0],
        ),
        const SizedBox(
          height: 5,
        ),
        GenreList(
          onSelect: onSelectGenre,
          genres: splits[1],
        ),
      ],
    );
  }
}

class GenreList extends StatelessWidget {
  const GenreList({
    super.key,
    required this.genres,
    required this.onSelect,
  });

  final void Function({required GenreModel genre}) onSelect;
  final List<GenreModel> genres;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            onTap: () => onSelect(
              genre: genres[index],
            ),
            genre: genres[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
