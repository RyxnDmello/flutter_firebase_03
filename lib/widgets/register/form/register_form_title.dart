import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormTitle extends StatelessWidget {
  const RegisterFormTitle({
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
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: 30,
      ),
    );
  }
}
