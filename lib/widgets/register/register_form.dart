import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import './form/register_form_profile.dart';
import './form/register_form_title.dart';
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

  String? _profileAvatar;
  String? _profileImage;
  String? _username;
  String? _email;
  String? _password;
  String? _retypePassword;

  void _submitForm() {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();

    if (_isLogin && _password != _retypePassword) {
      if (kDebugMode) {
        print("PASSWORD MISMATCH");
      }

      return;
    }

    if (kDebugMode) {
      print("Username: $_username");
      print("Email: $_email");
      print("Password: $_password");
      print("Retype Password: $_retypePassword");
    }
  }

  String? _validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return "Username Required";
    }

    if (username.length < 4 || username.length > 20) {
      return "Invalid Username";
    }

    return null;
  }

  String? _validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "Email Required";
    }

    if (!email.contains("@gmail.com") &&
        !email.contains("@outlook.com") &&
        !email.contains("@hotmail.com")) {
      return "Invalid Email Address";
    }

    return null;
  }

  String? _validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "Password Required";
    }

    if (password.length < 6 || password.length > 10) {
      return "Invalid Password";
    }

    return null;
  }

  Future<void> openGallery() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 250,
    );

    if (pickedImage == null) return;

    setState(() {
      _profileImage = pickedImage.path;
      _profileAvatar = null;
    });
  }

  void _saveUsername(String username) {
    _username = username;
  }

  void _saveEmail(String email) {
    _email = email;
  }

  void _savePassword(String? password) {
    _password = password;
  }

  void _saveRetypePassword(String? retypedPassword) {
    _retypePassword = retypedPassword;
  }

  void _switchForm() {
    setState(() => _isLogin = !_isLogin);
    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, _isLogin ? 80 : 40, 20, 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegisterFormTitle(
              title: _isLogin ? "Welcome Back" : "Create Your Account",
            ),
            if (!_isLogin)
              const SizedBox(
                height: 20,
              ),
            if (!_isLogin)
              RegisterFormProfile(
                profileAvatar: _profileAvatar,
                profileImage: _profileImage,
                openMenu: () {},
              ),
            const SizedBox(
              height: 25,
            ),
            if (!_isLogin)
              RegisterFormInput(
                inputType: TextInputType.text,
                onValidate: _validateUsername,
                onSave: _saveUsername,
                label: "Username",
                icon: Icons.face,
              ),
            if (!_isLogin)
              const SizedBox(
                height: 15,
              ),
            RegisterFormInput(
              inputType: TextInputType.emailAddress,
              onValidate: _validateEmail,
              onSave: _saveEmail,
              icon: Icons.email_outlined,
              label: "Email",
            ),
            const SizedBox(
              height: 15,
            ),
            RegisterFormInput(
              inputType: TextInputType.visiblePassword,
              onValidate: _validatePassword,
              onSave: _savePassword,
              label: "Password",
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            if (_isLogin)
              const SizedBox(
                height: 15,
              ),
            if (_isLogin)
              RegisterFormInput(
                inputType: TextInputType.visiblePassword,
                onValidate: _validatePassword,
                onSave: _saveRetypePassword,
                label: "Retype Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),
            const SizedBox(
              height: 20,
            ),
            RegisterFormButton(
              label: _isLogin ? "Login Account" : "Create Account",
              onSubmit: _submitForm,
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
              height: 30,
            ),
            const RegisterFormDivider(
              label: "OR",
            ),
            const SizedBox(
              height: 20,
            ),
            RegisterFormOAuth(
              image: "./lib/images/register/providers/google.png",
              message: _isLogin ? "Login With" : "Sign Up With",
              name: "Google",
            ),
          ],
        ),
      ),
    );
  }
}
