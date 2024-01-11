import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormInput extends StatelessWidget {
  const RegisterFormInput({
    required this.onValidate,
    required this.inputType,
    required this.onSave,
    required this.label,
    required this.icon,
    this.isPassword = false,
    super.key,
  });

  final String? Function(String? value) onValidate;
  final void Function(String value) onSave;
  final TextInputType inputType;
  final bool isPassword;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => onValidate(value),
      onSaved: (value) => onSave(value!),
      cursorWidth: 2,
      keyboardType: inputType,
      obscureText: isPassword,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        color: Colors.white,
        letterSpacing: 1,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 5,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
        ),
        label: Text(
          label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Colors.white60,
            letterSpacing: 1,
            fontSize: 20,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 200, 0, 0),
            width: 2,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 200, 0, 0),
            width: 2,
          ),
        ),
        errorStyle: GoogleFonts.poppins(
          color: const Color.fromARGB(255, 200, 0, 0),
          fontWeight: FontWeight.w500,
          letterSpacing: 0.65,
          fontSize: 15,
        ),
      ),
    );
  }
}
