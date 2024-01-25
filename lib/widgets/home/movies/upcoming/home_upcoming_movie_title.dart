import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUpcomingMovieTitle extends StatelessWidget {
  const HomeUpcomingMovieTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 0.5,
        fontSize: 20,
      ),
    );
  }
}
