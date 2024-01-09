import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormSwitch extends StatelessWidget {
  const RegisterFormSwitch({
    required this.onSwitch,
    required this.question,
    required this.message,
    super.key,
  });

  final Function() onSwitch;
  final String question;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            letterSpacing: 0.65,
            fontSize: 20,
          ),
        ),
        GestureDetector(
          onTap: onSwitch,
          child: Text(
            message,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              letterSpacing: 0.65,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
