import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreTitle extends StatelessWidget {
  const GenreTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title Movies",
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 35,
      ),
    );
  }
}
