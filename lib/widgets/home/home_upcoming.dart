import 'package:flutter/material.dart';

import '../../models/listing_model.dart';

import './upcoming/home_upcoming_movie.dart';
import './upcoming/home_upcoming_title.dart';
import './upcoming/home_upcoming_controller.dart';

class HomeUpcoming extends StatefulWidget {
  const HomeUpcoming({
    required this.upcoming,
    super.key,
  });

  final List<ListingMovieModel> upcoming;

  @override
  State<HomeUpcoming> createState() => _HomeUpcomingState();
}

class _HomeUpcomingState extends State<HomeUpcoming>
    with TickerProviderStateMixin {
  int _activePage = 0;

  void _onPageChanged(int nextPage) {
    if (nextPage % 2 == 0) {
      setState(() => _activePage = nextPage ~/ 2);
      return;
    }

    setState(() => _activePage = (nextPage + 1) % 2);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const HomeUpcomingTitle(
            title: "Coming Soon",
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 288,
            width: double.infinity,
            child: PageView.builder(
              padEnds: false,
              pageSnapping: false,
              physics: const BouncingScrollPhysics(),
              controller: PageController(
                viewportFraction: 1 / 2,
                initialPage: 0,
              ),
              onPageChanged: _onPageChanged,
              itemCount: widget.upcoming.length,
              itemBuilder: (context, index) {
                return HomeUpcomingMovie(
                  title: widget.upcoming[index].title,
                  image: widget.upcoming[index].imageURI,
                  genre: widget.upcoming[index].genres[0],
                  rating: widget.upcoming[index].rating,
                  onTap: () {},
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
              HomeUpcomingController(
                pageLength: widget.upcoming.length ~/ 2,
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
