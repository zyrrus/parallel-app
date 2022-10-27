// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:parallel/widgets/display/box.dart';
import 'package:parallel/widgets/form/text.dart';

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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              PText("First\nLastname", level: 2),
              PText("@username", level: 0),
            ])
          ]),
          SizedBox(
            height: 500,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemBuilder: (BuildContext _, int __) => Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
                child: Box(height: 1, width: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
