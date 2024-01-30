import 'package:flutter/material.dart';

import './appBar/genre_app_bar_button.dart';

class GenreAppBar extends StatelessWidget {
  const GenreAppBar({
    required this.onBack,
    super.key,
  });

  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GenreAppBarButton(
              onBack: onBack,
            ),
          ],
        ),
      ),
    );
  }
}
