import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './catalogue/catalogue_title.dart';
import './catalogue/catalogue_explore.dart';

import './products/home_top_series.dart';

class HomeTopSeriesCatalogue extends StatelessWidget {
  const HomeTopSeriesCatalogue({
    super.key,
    required this.tops,
  });

  final List<CatalogueProductModel> tops;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CatalogueTitle(
                title: "THE BEST SERIES",
              ),
              CatalogueExplore(
                onExplore: () async {},
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 400,
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: tops.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
            ),
            itemBuilder: (context, index) {
              return HomeTopSeries(
                onSelect: () async {},
                title: tops[index].title,
                genre: tops[index].genre,
                rating: tops[index].rating,
                image: tops[index].imageURI,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 15,
              );
            },
          ),
        ),
      ],
    );
  }
}
