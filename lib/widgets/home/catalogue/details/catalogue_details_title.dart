import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogueDetailsTitle extends StatelessWidget {
  const CatalogueDetailsTitle({
    required this.title,
    this.fontSize = 25,
    super.key,
  });

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 0.5,
        fontSize: fontSize,
        height: 1,
      ),
    );
  }
}
