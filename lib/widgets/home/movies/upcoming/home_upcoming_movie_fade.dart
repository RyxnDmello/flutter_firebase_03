import 'package:flutter/material.dart';

class HomeUpcomingFade extends StatelessWidget {
  const HomeUpcomingFade({
    required this.height,
    super.key,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black54,
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}
