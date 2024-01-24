import 'package:flutter/material.dart';

import 'appBar/genre_app_bar_button.dart';

class GenreAppBar extends StatelessWidget {
  const GenreAppBar({
    required this.onBack,
    super.key,
  });

  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GenreAppBarButton(
          onTap: onBack,
          icon: Icons.arrow_back,
        ),
      ],
    );
  }
}
