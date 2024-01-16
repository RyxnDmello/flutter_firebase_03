import 'package:flutter/material.dart';

import '../../models/listing_model.dart';

import './trending/home_trending_title.dart';
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
        const HomeTrendingTitle(
          title: "Trending Movies",
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: _onPageChanged,
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: widget.trending.length,
            itemBuilder: (context, index) {
              return HomeTrendingMovie(
                image: widget.trending[index].image,
                genre: widget.trending[index].genre,
                title: widget.trending[index].title,
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
