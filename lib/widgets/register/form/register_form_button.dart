import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormButton extends StatelessWidget {
  const RegisterFormButton({
    required this.onSubmit,
    required this.label,
    super.key,
  });

  final void Function() onSubmit;
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onSubmit,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 10,
        ),
        side: const BorderSide(
          color: Colors.white,
          width: 2,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    );
  }
}
