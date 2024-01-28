import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogueDetailsRating extends StatelessWidget {
  const CatalogueDetailsRating({
    required this.rating,
    this.fontSize = 18,
    this.iconSize = 20,
    this.spacing = 5,
    super.key,
  });

  final String rating;
  final double spacing;
  final double fontSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite,
          color: const Color.fromARGB(255, 255, 0, 0),
          size: iconSize,
        ),
        SizedBox(
          width: spacing,
        ),
        Text(
          rating,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: fontSize,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
