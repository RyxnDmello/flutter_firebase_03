import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogueProductTitle extends StatelessWidget {
  const CatalogueProductTitle({
    required this.title,
    this.fontSize = 25,
    this.isCentre = false,
    super.key,
  });

  final String title;
  final double fontSize;
  final bool isCentre;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: isCentre ? TextAlign.center : null,
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
