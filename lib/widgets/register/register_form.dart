import 'package:flutter/material.dart';

import './form/register_form_input.dart';
import './form/register_form_button.dart';
import './form/register_form_divider.dart';
import './form/register_form_switch.dart';
import './form/register_form_oauth.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  bool _isLogin = false;

  void _switchForm() {
    setState(() => _isLogin = !_isLogin);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 100, 20, 40),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!_isLogin)
              const RegisterFormInput(
                label: "Username",
                icon: Icons.face,
              ),
            if (!_isLogin)
              const SizedBox(
                height: 15,
              ),
            const RegisterFormInput(
              label: "Email",
              icon: Icons.email_outlined,
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 15,
            ),
            const RegisterFormInput(
              label: "Password",
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            if (_isLogin)
              const SizedBox(
                height: 15,
              ),
            if (_isLogin)
              const RegisterFormInput(
                label: "Retype Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),
            const SizedBox(
              height: 18,
            ),
            RegisterFormButton(
              label: _isLogin ? "Login Account" : "Create Account",
            ),
            const SizedBox(
              height: 40,
            ),
            RegisterFormSwitch(
              question: _isLogin ? "No Account? " : "Have an Account? ",
              message: _isLogin ? "Create" : "Login",
              onSwitch: _switchForm,
            ),
            const SizedBox(
              height: 40,
            ),
            const RegisterFormDivider(
              label: "OR",
            ),
            const SizedBox(
              height: 20,
            ),
            const RegisterFormOAuth(
              image: "./lib/images/register/providers/google.png",
              name: "Google",
            ),
            const SizedBox(
              height: 15,
            ),
            const RegisterFormOAuth(
              image: "./lib/images/register/providers/github.png",
              name: "GitHub",
            ),
          ],
        ),
      ),
    );
  }
}
