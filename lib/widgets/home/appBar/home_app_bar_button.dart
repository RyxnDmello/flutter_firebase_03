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
    return IconButton.filled(
      onPressed: onOpen,
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(10),
        backgroundColor: Colors.black45,
        foregroundColor: Colors.black,
        iconSize: 25,
      ),
      icon: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
