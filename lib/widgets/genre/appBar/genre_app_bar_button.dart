import 'package:flutter/material.dart';

class GenreAppBarButton extends StatelessWidget {
  const GenreAppBarButton({
    required this.onBack,
    super.key,
  });

  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onBack,
      icon: const Icon(Icons.arrow_back),
      color: Colors.white,
      iconSize: 30,
    );
  }
}
