import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUpcomingTitle extends StatelessWidget {
  const HomeUpcomingTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          letterSpacing: 1,
          fontSize: 26,
          shadows: [
            const Shadow(
              color: Colors.black26,
              offset: Offset(0, 5),
              blurRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
