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
      padding: const EdgeInsets.only(
        left: 5,
      ),
      child: Text(
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
      ),
    );
  }
}
