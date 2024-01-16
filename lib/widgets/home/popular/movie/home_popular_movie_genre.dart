import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePopularMovieGenre extends StatelessWidget {
  const HomePopularMovieGenre({
    required this.genre,
    super.key,
  });

  final String genre;

  @override
  Widget build(BuildContext context) {
    return Text(
      genre,
      style: GoogleFonts.montserrat(
        color: const Color.fromARGB(255, 200, 200, 200),
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        fontSize: 16,
      ),
    );
  }
}
