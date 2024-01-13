import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormModalButton extends StatelessWidget {
  const RegisterFormModalButton({
    required this.onOpen,
    required this.label,
    required this.icon,
    super.key,
  });

  final void Function() onOpen;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onOpen,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        side: const BorderSide(
          color: Colors.black,
          width: 2.5,
        ),
        foregroundColor: Colors.black,
      ),
      icon: Icon(
        icon,
        color: Colors.black,
        size: 25,
      ),
      label: Text(
        label,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    );
  }
}
