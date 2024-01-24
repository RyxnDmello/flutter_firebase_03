import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreSearch extends StatelessWidget {
  const GenreSearch({
    required this.onSearch,
    super.key,
  });

  final void Function({required String? input}) onSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onSearch(
        input: value,
      ),
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 1,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          letterSpacing: 1.5,
          fontSize: 20,
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 28,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color.fromARGB(255, 0, 0, 50),
        filled: true,
      ),
    );
  }
}
