import 'dart:io';

import 'package:flutter/material.dart';

class HomeAppBarProfile extends StatelessWidget {
  const HomeAppBarProfile({
    required this.onOpen,
    required this.profile,
    super.key,
  });

  final void Function() onOpen;
  final String profile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onOpen,
      child: profile.contains("./lib/images/register/avatars/")
          ? Image.asset(
              profile,
              fit: BoxFit.cover,
              width: 40,
            )
          : CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              backgroundImage: FileImage(
                File(
                  profile,
                ),
              ),
            ),
    );
  }
}
