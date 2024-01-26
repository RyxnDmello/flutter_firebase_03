import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTrendingSeriesRating extends StatelessWidget {
  const HomeTrendingSeriesRating({
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
          color: Color.fromARGB(255, 200, 0, 0),
        ),
        const SizedBox(
          width: 2.5,
        ),
        Text(
          rating,
          style: GoogleFonts.montserrat(
            color: const Color.fromARGB(255, 225, 225, 225),
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
