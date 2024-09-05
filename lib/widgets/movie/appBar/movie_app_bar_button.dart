import 'package:flutter/material.dart';

class MovieAppBarButton extends StatelessWidget {
  const MovieAppBarButton({
    required this.onTap,
    required this.icon,
    super.key,
  });

  final void Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onTap,
      icon: Icon(icon),
      splashRadius: 25,
      iconSize: 25,
    );
  }
}
