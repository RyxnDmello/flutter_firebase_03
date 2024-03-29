import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './catalogue/catalogue_tabs.dart';
import './catalogue/catalogue_explore.dart';

import './products/home_trending_movie.dart';

class HomeTrendingMoviesCatalogue extends StatefulWidget {
  const HomeTrendingMoviesCatalogue({
    required this.trending,
    super.key,
  });

  final List<CatalogueProductModel> trending;

  @override
  State<HomeTrendingMoviesCatalogue> createState() =>
      _HomeTrendingMoviesCatalogueState();
}

class _HomeTrendingMoviesCatalogueState
    extends State<HomeTrendingMoviesCatalogue> with TickerProviderStateMixin {
  final _pageController = PageController(
    viewportFraction: 1,
    initialPage: 0,
  );

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
        SizedBox(
          height: 450,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: _onPageChanged,
            controller: _pageController,
            itemCount: widget.trending.length,
            itemBuilder: (context, index) {
              return HomeTrendingMovie(
                title: widget.trending[index].title,
                image: widget.trending[index].imageURI,
                genre: widget.trending[index].genre,
                rating: widget.trending[index].rating,
                onSelectMovie: () async {},
              );
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CatalogueTabs(
                pageLength: widget.trending.length,
                activePage: _activePage,
                vsync: this,
              ),
              CatalogueExplore(
                onExplore: () async {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
