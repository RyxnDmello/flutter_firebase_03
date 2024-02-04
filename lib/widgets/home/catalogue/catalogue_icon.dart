import 'package:flutter/material.dart';

class CatalogueIcon extends StatelessWidget {
  const CatalogueIcon({
    required this.size,
    super.key,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: Icon(
        Icons.arrow_outward,
        color: Colors.white54,
        size: size,
      ),
    );
  }
}
