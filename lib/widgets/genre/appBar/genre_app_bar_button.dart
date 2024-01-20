import 'package:flutter/material.dart';

class GenreAppBarButton extends StatelessWidget {
  const GenreAppBarButton({
    required this.onTap,
    required this.icon,
    super.key,
  });

  final void Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(icon),
      color: Colors.white,
      iconSize: 30,
    );
  }
}
