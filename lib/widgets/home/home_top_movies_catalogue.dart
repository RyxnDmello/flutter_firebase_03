import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './catalogue/catalogue_title.dart';
import './catalogue/catalogue_explore.dart';
import './catalogue/catalogue_tabs.dart';

import './products/home_top_movie.dart';

class HomeTopMoviesCatalogue extends StatefulWidget {
  const HomeTopMoviesCatalogue({
    required this.tops,
    super.key,
  });

  final List<CatalogueProductModel> tops;

  @override
  State<HomeTopMoviesCatalogue> createState() => _HomeTopMoviesCatalogueState();
}

class _HomeTopMoviesCatalogueState extends State<HomeTopMoviesCatalogue>
    with TickerProviderStateMixin {
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
            left: 15,
            right: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CatalogueTitle(
                title: "THE BEST MOVIES",
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
          height: 420,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: _onPageChanged,
            itemCount: widget.tops.length,
            itemBuilder: (context, index) {
              return HomeTopMovie(
                image: widget.tops[index].imageURI,
                rating: widget.tops[index].rating,
                genre: widget.tops[index].genre,
                title: widget.tops[index].title,
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CatalogueTabs(
              pageLength: widget.tops.length,
              activePage: _activePage,
              vsync: this,
            ),
          ],
        ),
      ],
    );
  }
}
