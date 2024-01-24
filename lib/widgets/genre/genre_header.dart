import 'package:flutter/material.dart';

class GenreHeader extends StatelessWidget {
  const GenreHeader({
    required this.group,
    required this.height,
    required this.image,
    super.key,
  });

  final Widget group;
  final double height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 5),
                blurRadius: 10,
              )
            ],
            color: Colors.black,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 5,
            ),
            child: group,
          ),
        ),
      ],
    );
  }
}
