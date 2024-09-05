import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailsGenre extends StatelessWidget {
  const MovieDetailsGenre({
    required this.genre,
    super.key,
  });

  final String genre;

  @override
  Widget build(BuildContext context) {
    return Text(
      genre,
      style: GoogleFonts.montserrat(
        color: const Color.fromARGB(255, 180, 180, 180),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        fontSize: 20,
      ),
    );
  }
}
