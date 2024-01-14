import 'package:flutter/material.dart';

import './trending/home_trending_title.dart';
import './trending/home_trending_movie.dart';
import './trending/home_trending_controller.dart';

class HomeTrending extends StatefulWidget {
  const HomeTrending({super.key});

  @override
  State<HomeTrending> createState() => _HomeTrendingState();
}

class _HomeTrendingState extends State<HomeTrending>
    with TickerProviderStateMixin {
  int _activePage = 0;

  void _switchPage(int activePage) {
    setState(() => _activePage = activePage);
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
            itemCount: 4,
            controller: PageController(
              viewportFraction: 1,
              initialPage: 0,
            ),
            onPageChanged: _switchPage,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const HomeTrendingMovie(
                image: "./lib/images/temp/1.png",
                title: "Napoleon",
                rating: "6.4",
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        HomeTrendingController(
          activePage: _activePage,
          pageLength: 4,
          vsync: this,
        ),
      ],
    );
  }
}
