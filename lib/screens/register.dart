import 'package:flutter/material.dart';

import '../widgets/common/logo.dart';

import '../widgets/register/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "./lib/images/register/background.png",
            ),
            fit: BoxFit.cover,
            opacity: 0.85,
          ),
          color: Colors.black,
        ),
        child: const SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: 20,
            top: 40,
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Logo(),
                RegisterForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
