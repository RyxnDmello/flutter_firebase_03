import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeUpcomingMovieDate extends StatelessWidget {
  const HomeUpcomingMovieDate({
    required this.date,
    super.key,
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    String formattedDate() {
      return DateFormat("yy/MM/dd").format(
        DateTime.parse(date),
      );
    }

    return Text(
      formattedDate(),
      style: GoogleFonts.montserrat(
        color: const Color.fromARGB(255, 200, 200, 200),
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        fontSize: 16,
      ),
    );
  }
}
