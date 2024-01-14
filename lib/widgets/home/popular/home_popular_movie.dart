import 'package:flutter/material.dart';

class HomePopularMovie extends StatelessWidget {
  const HomePopularMovie({
    required this.onTap,
    required this.image,
    super.key,
  });

  final void Function() onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(0, 5),
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
      ),
    );
  }
}
