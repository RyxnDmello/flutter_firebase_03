import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailsName extends StatelessWidget {
  const MovieDetailsName({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 0.5,
        fontSize: 30,
      ),
    );
  }
}
