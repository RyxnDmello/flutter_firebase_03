import 'package:flutter/material.dart';

class HomeUpcomingMovieImage extends StatelessWidget {
  const HomeUpcomingMovieImage({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://image.tmdb.org/t/p/original/$image",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
