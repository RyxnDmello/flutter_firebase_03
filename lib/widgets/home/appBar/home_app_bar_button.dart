import 'package:flutter/material.dart';

class HomeAppBarButton extends StatelessWidget {
  const HomeAppBarButton({
    required this.onOpen,
    required this.icon,
    super.key,
  });

  final void Function() onOpen;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onOpen,
      icon: Icon(icon),
      color: Colors.white,
      iconSize: 28,
    );
  }
}
