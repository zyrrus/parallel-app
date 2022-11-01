// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:parallel/theme.dart';
import 'package:parallel/widgets/display/box.dart';
import 'package:parallel/widgets/display/card.dart';

// TODO: https://dartpad.dartlang.org/?id=8c9075a0896138df116715ea36186506

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Profile", style: Parallel.textStyles.h1()),
            IconButton(
              onPressed: () {},
              icon: SizedBox.expand(
                child: FittedBox(
                  child: Icon(Icons.menu_sharp),
                ),
              ),
              color: Parallel.colors.foreground,
            ),
          ],
        ),
        _ProfileInfo(
          firstName: "Zeke",
          lastName: "Abshire",
          username: "Zyrrus",
        ),
        _ProfileCarousel(),
      ],
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String username;

  const _ProfileInfo({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    double height = 100.0;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Box(width: height, height: height),
          SizedBox(width: 20.0),
          SizedBox(
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${firstName} ${lastName}",
                    style: Parallel.textStyles.h2()),
                Text("@${username}", style: Parallel.textStyles.p()),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ProfileCarousel extends StatelessWidget {
  const _ProfileCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.9),
        itemBuilder: (BuildContext _, int __) => Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          child: ProfileCard(),
        ),
      ),
    );
  }
}
