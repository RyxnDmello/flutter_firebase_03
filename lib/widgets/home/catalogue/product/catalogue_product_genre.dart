import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogueProductGenre extends StatelessWidget {
  const CatalogueProductGenre({
    required this.genre,
    this.fontSize = 18,
    super.key,
  });

  final String genre;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      genre,
      style: GoogleFonts.montserrat(
        color: const Color.fromARGB(255, 200, 200, 200),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        fontSize: fontSize,
        height: 1,
      ),
    );
  }
}
