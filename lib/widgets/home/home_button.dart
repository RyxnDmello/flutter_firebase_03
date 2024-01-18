import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    required this.isSolid,
    required this.onTap,
    required this.label,
    required this.image,
    required this.color,
    super.key,
  });

  final void Function() onTap;
  final bool isSolid;
  final String image;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(
            bottom: 10,
            top: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          side: !isSolid
              ? BorderSide(
                  color: color,
                  width: 2.5,
                )
              : null,
          backgroundColor: isSolid ? color : null,
          shadowColor: Colors.black,
          elevation: 1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 26,
              fit: BoxFit.cover,
              color: isSolid ? Colors.white : color,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              label,
              style: GoogleFonts.montserrat(
                fontWeight: isSolid ? FontWeight.w500 : FontWeight.w600,
                color: isSolid ? Colors.white : color,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
