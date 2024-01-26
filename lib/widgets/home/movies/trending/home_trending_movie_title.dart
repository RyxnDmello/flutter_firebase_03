import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTrendingMovieTitle extends StatelessWidget {
  const HomeTrendingMovieTitle({
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
        fontSize: 25,
        height: 1,
      ),
    );
  }
}