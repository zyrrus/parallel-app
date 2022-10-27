import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parallel/theme.dart';

enum ButtonState { primary, secondary, disabled }

class Button extends StatelessWidget {
  final String text;
  final ButtonState state;

  const Button({
    super.key,
    required this.text,
    this.state = ButtonState.secondary,
  });

  Color getColor() {
    switch (state) {
      case ButtonState.disabled:
        return const Color(0x40ffffff);
      case ButtonState.primary:
        return Parallel.colors.primary;
      case ButtonState.secondary:
        return Parallel.colors.foreground;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: _buttonDecoration(state),
        child: Text(
          text,
          style: GoogleFonts.donegalOne(color: getColor()),
        ),
      ),
    );
  }
}

BoxDecoration _buttonDecoration(ButtonState state) {
  double weight = state == ButtonState.primary ? 2 : 1;
  Color background = Parallel.colors.background;
  late Color outline;

  switch (state) {
    case ButtonState.disabled:
      outline = const Color(0x40ffffff);
      break;
    case ButtonState.primary:
      outline = Parallel.colors.primary;
      break;
    case ButtonState.secondary:
      outline = Parallel.colors.foreground;
      break;
  }

  Offset offset = const Offset(2, 2);
  Offset border = offset + Offset(weight, weight);

  return BoxDecoration(
    color: background,
    boxShadow: [
      BoxShadow(
        color: outline,
        offset: border,
      ),
      BoxShadow(
        color: background,
        offset: offset,
      ),
    ],
    border: Border.all(
      color: outline,
      width: weight,
    ),
  );
}
