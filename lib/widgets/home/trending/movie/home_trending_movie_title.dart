import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTrendingMovieTitle extends StatelessWidget {
  const HomeTrendingMovieTitle({
    required this.title,
    required this.genre,
    super.key,
  });

  final String title;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 25,
            height: 1,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          genre,
          style: GoogleFonts.montserrat(
            color: const Color.fromARGB(255, 225, 225, 225),
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            fontSize: 16,
            height: 1,
          ),
        ),
      ],
    );
  }
}
