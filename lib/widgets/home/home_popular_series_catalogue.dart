import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './catalogue/catalogue_title.dart';

import './products/home_popular_series.dart';

class HomePopularSeriesCatalogue extends StatefulWidget {
  const HomePopularSeriesCatalogue({
    required this.popular,
    super.key,
  });

  final List<CatalogueProductModel> popular;

  @override
  State<HomePopularSeriesCatalogue> createState() =>
      _HomePopularSeriesCatalogueState();
}

class _HomePopularSeriesCatalogueState
    extends State<HomePopularSeriesCatalogue> {
  List<List<CatalogueProductModel>> _popular = [];

  @override
  void initState() {
    super.initState();
    _popular = _custom;
  }

  List<List<CatalogueProductModel>> get _custom {
    List<List<CatalogueProductModel>> custom = [];
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
            title: "Popular Series",
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
                onSelectTV: () async {},
                isExpanded: false,
                fadeHeight: 125,
                height: 160,
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
                  onSelectTV: () async {},
                  isExpanded: true,
                  fadeHeight: 125,
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
                  onSelectTV: () async {},
                  isExpanded: true,
                  fadeHeight: 125,
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
