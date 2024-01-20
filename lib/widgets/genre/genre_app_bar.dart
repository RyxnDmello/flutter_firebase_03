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
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 25),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 5),
            blurRadius: 10,
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GenreAppBarButton(
              onTap: onBack,
              icon: Icons.arrow_back,
            ),
          ],
        ),
      ),
    );
  }
}
