// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parallel/theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          // controller: controller,
          cursorColor: Parallel.colors.foreground,
          style: GoogleFonts.donegalOne(
            color: Parallel.colors.foreground,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            fillColor: Parallel.colors.background,
            filled: true,
            contentPadding: EdgeInsets.all(0),
            hintText: "Search",
            hintStyle: GoogleFonts.donegalOne(
              color: Parallel.colors.foreground.withOpacity(0.4),
              fontSize: 18,
            ),
            prefixIcon: Icon(Icons.search, color: Parallel.colors.foreground),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Parallel.colors.primary, width: 3.0),
              borderRadius: BorderRadius.zero,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Parallel.colors.foreground.withOpacity(0.4)),
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ],
    );
  }
}
