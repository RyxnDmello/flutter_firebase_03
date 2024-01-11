import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashLoader extends StatelessWidget {
  const SplashLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircularProgressIndicator(
          backgroundColor: Colors.black38,
          strokeCap: StrokeCap.round,
          color: Colors.white,
          strokeWidth: 2.8,
          strokeAlign: -4,
        ),
        const SizedBox(
          width: 6.5,
        ),
        RichText(
          text: TextSpan(
            text: "Loading The ",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              letterSpacing: 0.5,
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: "Latest...",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
