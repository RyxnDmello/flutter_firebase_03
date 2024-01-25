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
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
        color: Colors.black,
      ),
    );
  }
}
