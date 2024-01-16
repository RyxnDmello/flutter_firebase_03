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
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://image.tmdb.org/t/p/original/$image",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
        color: Colors.black,
      ),
    );
  }
}
