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
  final _pageController = PageController();
  int _activePage = 0;

  @override
  void initState() {
    super.initState();
    _slideshow();
  }

  void _slideshow() async {
    Future.delayed(
      const Duration(milliseconds: 10000),
      () {
        _pageController.animateToPage(
          _activePage == 3 ? 0 : _activePage + 1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );

        setState(() {
          _activePage = _activePage == 3 ? 0 : _activePage + 1;
        });

        _slideshow();
      },
    );
  }

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
            onPageChanged: _switchPage,
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return HomeTrendingMovie(
                image: "./lib/images/temp/trending.png",
                genre: "History • Drama",
                title: "Napoleon",
                rating: "6.4",
                onTap: () {},
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
