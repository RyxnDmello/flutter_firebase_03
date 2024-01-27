import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePopularSeriesRating extends StatelessWidget {
  const HomePopularSeriesRating({
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
          color: Color.fromARGB(255, 255, 0, 0),
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          rating,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: 0.5,
            fontSize: 18,
            height: 1,
          ),
        ),
      ],
    );
  }
}
