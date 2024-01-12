import 'dart:io';

import 'package:flutter/material.dart';

class RegisterFormProfile extends StatelessWidget {
  const RegisterFormProfile({
    required this.profileAvatar,
    required this.profileImage,
    required this.openMenu,
    super.key,
  });

  final void Function() openMenu;
  final String? profileAvatar;
  final String? profileImage;

  @override
  Widget build(BuildContext context) {
    Widget profile = Image.asset(
      "./lib/images/register/profile.png",
      fit: BoxFit.cover,
      width: 100,
    );

    IconData? icon;

    if (profileAvatar != null && profileImage == null) {
      profile = Image.asset(
        profileAvatar!,
        fit: BoxFit.cover,
        width: 100,
      );

      icon = Icons.face;
    }

    if (profileImage != null && profileAvatar == null) {
      profile = CircleAvatar(
        backgroundColor: Colors.black,
        backgroundImage: FileImage(
          File(
            profileImage!,
          ),
        ),
        radius: 50,
      );

      icon = Icons.camera;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: openMenu,
              child: profile,
            ),
            Positioned(
              right: 0,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
