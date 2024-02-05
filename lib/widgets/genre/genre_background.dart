import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GenreBackground extends StatelessWidget {
  const GenreBackground({
    required this.background,
    required this.height,
    super.key,
  });

  final String background;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(background),
          fit: BoxFit.cover,
          opacity: 0.8,
        ),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.elliptical(20, 10),
          bottomLeft: Radius.elliptical(20, 10),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
        color: Colors.black,
      ),
    );
  }
}
