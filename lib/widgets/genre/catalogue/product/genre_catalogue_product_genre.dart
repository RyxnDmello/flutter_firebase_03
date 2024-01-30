import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreCatalogueProductGenre extends StatelessWidget {
  const GenreCatalogueProductGenre({
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
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        fontSize: 18,
      ),
    );
  }
}
