import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeGenresTitle extends StatelessWidget {
  const HomeGenresTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
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
            ),
          ],
        ),
      ),
    );
  }
}
