import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreHeaderSearch extends StatelessWidget {
  const GenreHeaderSearch({
    required this.onSearch,
    super.key,
  });

  final void Function({required String? value}) onSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onSearch(
        value: value,
      ),
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 1,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        label: Text(
          "Search",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 20,
          ),
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
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
