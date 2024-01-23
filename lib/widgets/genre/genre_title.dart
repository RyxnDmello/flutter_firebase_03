import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreTitle extends StatelessWidget {
  const GenreTitle({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: Text(
        "$name Movies",
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 30,
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
