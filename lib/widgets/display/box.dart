import 'package:flutter/widgets.dart';
import 'package:parallel/theme.dart';

class Box extends StatelessWidget {
  final double width;
  final double height;

  const Box({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      color: Parallel.colors.foreground.withOpacity(0.3),
      child: SizedBox(width: width, height: height),
    );
  }
}
