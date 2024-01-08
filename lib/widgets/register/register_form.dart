import 'package:flutter/material.dart';

import './form/register_form_input.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 100, 20, 40),
      child: Form(
        key: _formKey,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegisterFormInput(
              label: "Username",
              icon: Icons.face,
            ),
            SizedBox(
              height: 15,
            ),
            RegisterFormInput(
              label: "Email",
              icon: Icons.email_outlined,
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 15,
            ),
            RegisterFormInput(
              label: "Password",
              icon: Icons.lock_outline,
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }
}
