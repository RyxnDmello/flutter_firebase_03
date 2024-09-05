import 'package:flutter/material.dart';

class HomeAppBarButton extends StatelessWidget {
  const HomeAppBarButton({
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
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(10),
        backgroundColor: Colors.black45,
        highlightColor: Colors.black38,
        iconSize: 25,
      ),
      icon: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
