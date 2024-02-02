import 'package:flutter/material.dart';

class CatalogueExplore extends StatelessWidget {
  const CatalogueExplore({
    super.key,
    required this.onExplore,
  });

  final Future<void> Function() onExplore;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: onExplore,
      style: IconButton.styleFrom(
        side: const BorderSide(
          color: Colors.black,
          width: 2.5,
        ),
      ),
      icon: const Icon(
        Icons.arrow_forward,
        size: 30,
      ),
      highlightColor: const Color.fromARGB(50, 0, 0, 255),
      color: Colors.black,
    );
  }
}
