import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormDivider extends StatelessWidget {
  const RegisterFormDivider({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 1.5,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: 1,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
