import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailsRating extends StatelessWidget {
  const MovieDetailsRating({
    required this.rating,
    super.key,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    Color getColor(int index) {
      if (rating * 0.1 * 5 > index + 1) return Colors.yellow;
      return Colors.white30;
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          rating.toString(),
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 25,
          child: ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Icon(
                color: getColor(index),
                Icons.star,
                size: 24,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 5,
              );
            },
          ),
        ),
      ],
    );
  }
}
