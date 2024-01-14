import 'package:flutter/material.dart';

import './popular/home_popular_movie.dart';
import './popular/home_popular_title.dart';

class HomePopular extends StatelessWidget {
  const HomePopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const HomePopularTitle(
            title: "Popular Movies",
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.25,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return HomePopularMovie(
                image: "./lib/images/temp/popular.png",
                onTap: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
