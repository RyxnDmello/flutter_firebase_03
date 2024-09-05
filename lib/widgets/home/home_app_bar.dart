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
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 15,
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
                  onTap: () {},
                  icon: Icons.share_outlined,
                ),
                const SizedBox(
                  width: 5,
                ),
                HomeAppBarButton(
                  onTap: () {},
                  icon: Icons.favorite_outline,
                ),
                const SizedBox(
                  width: 5,
                ),
                HomeAppBarButton(
                  onTap: () {},
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
