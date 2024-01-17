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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          right: 15,
          left: 15,
        ),
        margin: const EdgeInsets.only(
          bottom: 5,
          top: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 0, 0, 50),
            width: 2.5,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 2.5),
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              genre.image,
              width: 25,
            ),
            const SizedBox(
              width: 6.5,
            ),
            Text(
              genre.name,
              style: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 0, 0, 50),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
