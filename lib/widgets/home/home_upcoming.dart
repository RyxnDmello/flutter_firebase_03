import 'package:flutter/material.dart';

import '../../models/listing_model.dart';

import './upcoming/home_upcoming_movie.dart';
import './upcoming/home_upcoming_title.dart';

class HomeUpcoming extends StatelessWidget {
  const HomeUpcoming({
    required this.upcoming,
    super.key,
  });

  final List<ListingMovieModel> upcoming;

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
            title: "Upcoming Movies",
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
                viewportFraction: 1 / 1.8,
                initialPage: 0,
              ),
              itemCount: upcoming.length,
              itemBuilder: (context, index) {
                return HomeUpcomingMovie(
                  rating: upcoming[index].rating,
                  title: upcoming[index].title,
                  image: upcoming[index].image,
                  date: upcoming[index].date,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
