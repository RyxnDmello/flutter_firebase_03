import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './catalogue/catalogue_title.dart';
import './catalogue/catalogue_tabs.dart';

import './movies/home_upcoming_movie.dart';

class HomeUpcomingMovies extends StatefulWidget {
  const HomeUpcomingMovies({
    required this.upcoming,
    super.key,
  });

  final List<CatalogueProductModel> upcoming;

  @override
  State<HomeUpcomingMovies> createState() => _HomeUpcomingMoviesState();
}

class _HomeUpcomingMoviesState extends State<HomeUpcomingMovies>
    with TickerProviderStateMixin {
  int _activePage = 0;

  void _onPageChanged(int nextPage) {
    setState(() => _activePage = nextPage);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 5,
        left: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            child: CatalogueTitle(
              title: "Coming Soon",
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: PageView.builder(
              padEnds: false,
              controller: PageController(
                viewportFraction: 1 / 1.5,
                initialPage: 0,
              ),
              onPageChanged: _onPageChanged,
              itemCount: widget.upcoming.length,
              itemBuilder: (context, index) {
                return HomeUpcomingMovie(
                  title: widget.upcoming[index].title,
                  image: widget.upcoming[index].imageURI,
                  rating: widget.upcoming[index].rating,
                  genre: widget.upcoming[index].genres[0],
                  onSelectMovie: () async {},
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CatalogueTabs(
                pageLength: widget.upcoming.length,
                activePage: _activePage,
                vsync: this,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
