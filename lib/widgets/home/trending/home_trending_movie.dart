import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTrendingMovie extends StatelessWidget {
  const HomeTrendingMovie({
    required this.image,
    required this.title,
    required this.rating,
    super.key,
  });

  final String title;
  final String image;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
          opacity: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(50, 0, 0, 0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 10,
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite,
                  size: 25,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  rating,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20,
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
