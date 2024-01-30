import 'package:flutter/material.dart';

class GenreBackground extends StatelessWidget {
  const GenreBackground({
    required this.height,
    super.key,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.elliptical(20, 10),
          bottomLeft: Radius.elliptical(20, 10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
        color: Color.fromARGB(255, 0, 0, 50),
      ),
    );
  }
}
