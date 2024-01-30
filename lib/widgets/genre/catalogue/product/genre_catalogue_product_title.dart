import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreCatalogueProductTitle extends StatelessWidget {
  const GenreCatalogueProductTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 1,
        fontSize: 22,
        height: 1,
      ),
    );
  }
}
