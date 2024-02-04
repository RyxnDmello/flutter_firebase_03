import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCollectionButton extends StatelessWidget {
  const HomeCollectionButton({
    required this.onTap,
    required this.label,
    super.key,
  });

  final void Function() onTap;
  final String label;

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
          backgroundColor: const Color.fromARGB(255, 0, 0, 50),
          shadowColor: Colors.black,
          elevation: 1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "./lib/images/home/collection.png",
              fit: BoxFit.cover,
              width: 22.5,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
