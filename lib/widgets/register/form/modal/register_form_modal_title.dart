import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormModalTitle extends StatelessWidget {
  const RegisterFormModalTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: 0.5,
        fontSize: 30,
      ),
    );
  }
}
