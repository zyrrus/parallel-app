import 'package:flutter/material.dart';
import 'package:parallel/widgets/box.dart';
import 'package:parallel/widgets/text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PText("Profile", level: 1),
          SizedBox(height: 20),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Box(width: 125, height: 125),
            SizedBox(width: 20.0),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  PText("First\nLastname", level: 2),
                  PText("@username", level: 0),
                ])
          ]),
          // Box(height: 1000, width: 1),
          SizedBox(
            height: 500,
            child: PageView.builder(
                // store this controller in a State to save the carousel scroll position
                controller: PageController(viewportFraction: 0.8),
                itemBuilder: (BuildContext _, int __) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 12.0),
                      child: Box(height: 1, width: 1),
                    )),
          ),
        ],
      ),
    );
  }
}
