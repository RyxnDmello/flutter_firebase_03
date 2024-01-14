import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePopularTitle extends StatelessWidget {
  const HomePopularTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: 26,
        shadows: [
          const Shadow(
            color: Colors.black26,
            offset: Offset(0, 5),
            blurRadius: 10,
          )
        ],
      ),
    );
  }
}
