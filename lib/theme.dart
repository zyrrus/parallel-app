// ignore_for_file: library_private_types_in_public_api

import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Parallel {
  static _Colors colors = _Colors();
  static _TextStyles textStyles = _TextStyles();
}

class _Colors {
  final Color primary = const Color(0xffFEE3C4);
  final Color foreground = const Color(0xffF9F4F1);
  final Color background = const Color(0xff1E1E1E);
}

class _TextStyles {
  final double baseFontSize = 18.0;

  final header = GoogleFonts.donegalOne;
  final body = GoogleFonts.workSans;

  // === Commonly used text styles =============================================
  TextStyle h1() => header(
        color: Parallel.colors.primary,
        fontSize: baseFontSize * 2,
      );

  TextStyle h2() => header(
        color: Parallel.colors.primary,
        fontSize: baseFontSize * 1.5,
      );

  TextStyle h3() => header(
        color: Parallel.colors.foreground,
        fontSize: baseFontSize * 1.17,
      );

  TextStyle h4() => header(
        color: Parallel.colors.foreground,
        fontSize: baseFontSize,
      );

  TextStyle p() => body(
        color: Parallel.colors.foreground,
        fontSize: baseFontSize,
      );
}
