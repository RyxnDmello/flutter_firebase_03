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
    return Container(
      padding: const EdgeInsets.only(
        bottom: 15,
        top: 15,
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 5),
            spreadRadius: 5,
            blurRadius: 10,
          )
        ],
        color: Color.fromARGB(255, 0, 0, 25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const HomeUpcomingTitle(
            title: "Upcoming Movies",
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 275,
            width: double.infinity,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(
              right: 5,
              left: 5,
            ),
            child: PageView.builder(
              itemCount: 3,
              padEnds: false,
              pageSnapping: false,
              controller: PageController(
                viewportFraction: 1 / 2,
                initialPage: 0,
              ),
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
