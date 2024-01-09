import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormOAuth extends StatelessWidget {
  const RegisterFormOAuth({
    required this.image,
    required this.name,
    super.key,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        side: const BorderSide(
          color: Colors.white,
          width: 2,
        ),
        foregroundColor: Colors.black,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 25,
          ),
          const SizedBox(
            width: 10,
          ),
          RichText(
            text: TextSpan(
              text: "Continue With ",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25,
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: name,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
