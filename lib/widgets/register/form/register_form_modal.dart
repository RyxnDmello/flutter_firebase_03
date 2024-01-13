import 'package:flutter/material.dart';

import '../../common/separator.dart';

import './modal/register_form_modal_title.dart';
import './modal/register_form_modal_button.dart';
import './modal/register_form_modal_avatars.dart';

class RegisterFormModal extends StatelessWidget {
  const RegisterFormModal({
    required this.onOpenGallery,
    required this.onOpenCamera,
    super.key,
  });

  final void Function() onOpenGallery;
  final void Function() onOpenCamera;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const RegisterFormModalTitle(
            title: "Add Your Profile",
          ),
          const SizedBox(
            height: 20,
          ),
          RegisterFormModalButton(
            onOpen: onOpenCamera,
            icon: Icons.camera,
            label: "Open Camera",
          ),
          const SizedBox(
            height: 10,
          ),
          RegisterFormModalButton(
            onOpen: onOpenGallery,
            icon: Icons.image,
            label: "Open Gallery",
          ),
          const SizedBox(
            height: 25,
          ),
          const Separator(
            isDark: true,
            label: "OR",
          ),
          const SizedBox(
            height: 25,
          ),
          const RegisterFormModalAvatars(),
        ],
      ),
    );
  }
}
