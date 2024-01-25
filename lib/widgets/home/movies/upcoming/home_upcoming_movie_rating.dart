import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUpcomingMovieRating extends StatelessWidget {
  const HomeUpcomingMovieRating({
    required this.rating,
    super.key,
  });

  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.favorite,
          size: 19,
          color: Color.fromARGB(255, 225, 0, 0),
        ),
        const SizedBox(
          width: 2.8,
        ),
        Text(
          rating,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: 1,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
