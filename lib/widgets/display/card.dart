import 'package:flutter/widgets.dart';
import 'package:parallel/theme.dart';

class Card extends StatelessWidget {
  final Widget child;

  const Card({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Parallel.colors.primary.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(2.0)),
      ),
      padding: const EdgeInsets.all(20.0),
      child: child,
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi, I'm Zeke.", style: Parallel.textStyles.h2()),
          const SizedBox(height: 15.0),
          Text("I should be able to place a lot of text here",
              style: Parallel.textStyles.p()),
          Text("I should be able to place a lot of text here",
              style: Parallel.textStyles.p()),
          Text("I should be able to place a lot of text here",
              style: Parallel.textStyles.p()),
        ],
      ),
    );
  }
}
