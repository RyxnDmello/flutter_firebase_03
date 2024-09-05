import 'package:flutter/material.dart';

import 'package:pixel_flix/widgets/home/appBar/home_app_bar_button.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({
    required this.onBack,
    super.key,
  });

  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          left: 10,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeAppBarButton(
              onTap: onBack,
              icon: Icons.arrow_back,
            ),
            HomeAppBarButton(
              onTap: onBack,
              icon: Icons.favorite_border,
            ),
          ],
        ),
      ),
    );
  }
}
