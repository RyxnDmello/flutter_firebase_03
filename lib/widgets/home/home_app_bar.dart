import 'package:flutter/material.dart';

import './appBar/home_app_bar_button.dart';
import './appBar/home_app_bar_profile.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    required this.onOpenSearch,
    required this.onOpenSaved,
    required this.onOpenShare,
    super.key,
  });

  final void Function() onOpenSearch;
  final void Function() onOpenShare;
  final void Function() onOpenSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 8),
            blurRadius: 8,
          ),
        ],
        color: Color.fromARGB(255, 0, 0, 25),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeAppBarProfile(
              profile: "./lib/images/register/avatars/avatar-1.png",
              onOpen: () {},
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeAppBarButton(
                  onOpen: () {},
                  icon: Icons.share_outlined,
                ),
                HomeAppBarButton(
                  onOpen: () {},
                  icon: Icons.favorite_outline,
                ),
                HomeAppBarButton(
                  onOpen: () {},
                  icon: Icons.search_outlined,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
