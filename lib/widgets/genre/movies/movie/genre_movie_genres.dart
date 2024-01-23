import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreMovieGenres extends StatelessWidget {
  const GenreMovieGenres({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        color: const Color.fromARGB(255, 225, 225, 225),
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        fontSize: 16,
      ),
    );
  }
}
