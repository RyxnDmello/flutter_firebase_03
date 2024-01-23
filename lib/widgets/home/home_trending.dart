import 'package:flutter/material.dart';

import '../../models/listing_model.dart';

import './trending/home_trending_movie.dart';
import './trending/home_trending_controller.dart';

class HomeTrending extends StatefulWidget {
  const HomeTrending({
    required this.trending,
    super.key,
  });

  final List<ListingMovieModel> trending;

  @override
  State<HomeTrending> createState() => _HomeTrendingState();
}

class _HomeTrendingState extends State<HomeTrending>
    with TickerProviderStateMixin {
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
                onTap: () {},
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        HomeTrendingController(
          pageLength: widget.trending.length,
          activePage: _activePage,
          vsync: this,
        ),
      ],
    );
  }
}
