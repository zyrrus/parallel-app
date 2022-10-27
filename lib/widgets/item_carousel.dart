import 'package:flutter/widgets.dart';
import 'package:parallel/widgets/box.dart';

class ItemCarousel extends StatelessWidget {
  final List<Widget> children;
  final double height;

  const ItemCarousel({super.key, required this.children, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: Box(width: height, height: height),
        ),
      ),
    );
  }
}
