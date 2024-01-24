import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/genre_model.dart';

class HomeGenresButton extends StatelessWidget {
  const HomeGenresButton({
    required this.onTap,
    required this.genre,
    super.key,
  });

  final void Function() onTap;
  final GenreModel genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 5,
        top: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 0, 0, 50),
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: InkWell(
        onTap: onTap,
        highlightColor: const Color.fromARGB(60, 0, 0, 255),
        splashColor: const Color.fromARGB(100, 0, 0, 255),
        borderRadius: BorderRadius.circular(40),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                genre.title,
                style: GoogleFonts.montserrat(
                  color: const Color.fromARGB(255, 0, 0, 50),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
