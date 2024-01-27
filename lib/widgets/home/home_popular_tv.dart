import 'package:flutter/material.dart';

import '../../models/catalogue_model.dart';

import '../common/catalogue/catalogue_title.dart';

import './tv/home_popular_series.dart';

class HomePopularTV extends StatefulWidget {
  const HomePopularTV({
    required this.popular,
    super.key,
  });

  final List<CatalogueMovieModel> popular;

  @override
  State<HomePopularTV> createState() => _HomePopularTVState();
}

class _HomePopularTVState extends State<HomePopularTV> {
  List<List<CatalogueMovieModel>> _popular = [];

  @override
  void initState() {
    super.initState();
    _popular = _custom;
  }

  List<List<CatalogueMovieModel>> get _custom {
    List<List<CatalogueMovieModel>> custom = [];
    bool isRow = true;
    int row = 0;

    for (int i = 0; i < widget.popular.length;) {
      custom.add([]);

      for (int j = i; j < i + (isRow ? 2 : 1); j++) {
        custom[row].add(widget.popular[j]);
      }

      i += isRow ? 2 : 1;
      isRow = !isRow;
      ++row;
    }

    return custom;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 15,
          ),
          child: CatalogueTitle(
            title: "Popular TV Series",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _popular.length,
          itemBuilder: (context, index) {
            if (_popular[index].length.isOdd) {
              return HomePopularSeries(
                image: _popular[index].first.imageURI,
                rating: _popular[index].first.rating,
                title: _popular[index].first.title,
                genre: _popular[index].first.genre,
                onSelectTV: () {},
                isExpanded: false,
                height: 150,
              );
            }

            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomePopularSeries(
                  image: _popular[index][0].imageURI,
                  genre: _popular[index][0].genres[0],
                  rating: _popular[index][0].rating,
                  title: _popular[index][0].title,
                  onSelectTV: () {},
                  isExpanded: true,
                  height: 200,
                ),
                const SizedBox(
                  width: 15,
                ),
                HomePopularSeries(
                  image: _popular[index][1].imageURI,
                  genre: _popular[index][1].genres[0],
                  rating: _popular[index][1].rating,
                  title: _popular[index][1].title,
                  onSelectTV: () {},
                  isExpanded: true,
                  height: 200,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 15,
            );
          },
        ),
      ],
    );
  }
}
