import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Separator extends StatelessWidget {
  const Separator({
    required this.label,
    this.isDark = false,
    super.key,
  });

  final String label;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: isDark ? Colors.black : Colors.white,
            thickness: isDark ? 2.25 : 1.5,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontWeight: isDark ? FontWeight.w600 : FontWeight.w500,
            color: isDark ? Colors.black : Colors.white,
            letterSpacing: 1,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Divider(
            color: isDark ? Colors.black : Colors.white,
            thickness: isDark ? 2.25 : 1.5,
          ),
        ),
      ],
    );
  }
}
