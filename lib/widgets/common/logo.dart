import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "./lib/images/logo.png",
          width: 60,
        ),
        const SizedBox(
          width: 0,
        ),
        RichText(
          text: TextSpan(
            text: "Pixel",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w300,
              color: Colors.white,
              letterSpacing: -2,
              fontSize: 45,
            ),
            children: [
              TextSpan(
                text: "Flix",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: -2,
                  fontSize: 45,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
