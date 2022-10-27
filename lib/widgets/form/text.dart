import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parallel/theme.dart';

class PText extends StatelessWidget {
  final String title;
  final int level;

  const PText(this.title, {super.key, this.level = 0})
      : assert(level >= 0),
        assert(level < 5);

  TextStyle getStyle() {
    double baseFontSize = 18;

    switch (level) {
      case 1:
        return GoogleFonts.donegalOne(
          color: Parallel.colors.primary,
          fontSize: baseFontSize * 2,
          fontWeight: FontWeight.bold,
        );
      case 2:
        return GoogleFonts.donegalOne(
          color: Parallel.colors.primary,
          fontSize: baseFontSize * 1.5,
          fontWeight: FontWeight.bold,
        );
      case 3:
        return GoogleFonts.donegalOne(
          color: Parallel.colors.foreground,
          fontSize: baseFontSize * 1.17,
          fontWeight: FontWeight.bold,
        );
      case 4:
        return GoogleFonts.donegalOne(
          color: Parallel.colors.foreground,
          fontSize: baseFontSize,
          fontWeight: FontWeight.bold,
        );
      default:
        return GoogleFonts.donegalOne(
          color: Parallel.colors.foreground,
          fontSize: baseFontSize,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: getStyle(),
    );
  }
}
