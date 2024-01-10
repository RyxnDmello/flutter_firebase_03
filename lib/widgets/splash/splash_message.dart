import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashMessage extends StatelessWidget {
  const SplashMessage({
    required this.message,
    required this.quote,
    super.key,
  });

  final String message;
  final String quote;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 1,
            fontSize: 28,
            height: 1,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          quote,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            letterSpacing: 0.5,
            fontSize: 25,
            height: 1,
          ),
        ),
      ],
    );
  }
}
