import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './catalogue/catalogue_title.dart';
import './catalogue/catalogue_tabs.dart';

import './products/home_trending_series.dart';
import 'catalogue/catalogue_explore.dart';

class HomeTrendingSeriesCatalogue extends StatefulWidget {
  const HomeTrendingSeriesCatalogue({
    required this.trending,
    super.key,
  });

  final List<CatalogueProductModel> trending;

  @override
  State<HomeTrendingSeriesCatalogue> createState() =>
      _HomeTrendingSeriesCatalogueState();
}

class _HomeTrendingSeriesCatalogueState
    extends State<HomeTrendingSeriesCatalogue> with TickerProviderStateMixin {
  int _activePage = 0;

  void _onPageChanged(int nextPage) {
    setState(() => _activePage = nextPage);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CatalogueTitle(
                title: "TRENDING SERIES",
              ),
              CatalogueExplore(
                onExplore: () async {},
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 350,
          child: PageView.builder(
            itemCount: widget.trending.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return HomeTrendingSeries(
                title: widget.trending[index].title,
                genre: widget.trending[index].genre,
                rating: widget.trending[index].rating,
                image: widget.trending[index].imageURI,
                onSelectTV: () async {},
              );
            },
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CatalogueTabs(
              pageLength: widget.trending.length,
              activePage: _activePage,
              vsync: this,
            ),
          ],
        ),
      ],
    );
  }
}
