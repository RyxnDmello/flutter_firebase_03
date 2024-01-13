import 'package:flutter/material.dart';

class RegisterFormModalAvatars extends StatelessWidget {
  const RegisterFormModalAvatars({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> avatars = [
      "./lib/images/register/avatars/avatar-1.png",
      "./lib/images/register/avatars/avatar-2.png",
      "./lib/images/register/avatars/avatar-3.png",
      "./lib/images/register/avatars/avatar-4.png",
      "./lib/images/register/avatars/avatar-5.png",
      "./lib/images/register/avatars/avatar-6.png",
      "./lib/images/register/avatars/avatar-7.png",
      "./lib/images/register/avatars/avatar-8.png",
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: avatars.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 25,
        mainAxisSpacing: 25,
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Image.asset(
            avatars[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
