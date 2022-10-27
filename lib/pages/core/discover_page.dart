// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parallel/theme.dart';
import 'package:parallel/widgets/box.dart';
import 'package:parallel/widgets/text.dart';
import 'package:parallel/widgets/item_carousel.dart';

/* DISCOVER PAGE
    This is where completed projects will be featured. Popular projects 
    (determined by youtube success) will make their way to the top of this page.
    Users can also pay to advertise their completed projects.
*/

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      // padding: const EdgeInsets.all(8.0),
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              PText("Discover", level: 1),
              SizedBox(height: 20),
              PText("Featured Projects", level: 3),
              SizedBox(height: 20),
              // Paid featured projects
              ItemCarousel(
                height: 150,
                children: const [
                  Box(width: 150, height: 150),
                  Box(width: 150, height: 150),
                  Box(width: 150, height: 150),
                  Box(width: 150, height: 150),
                  Box(width: 150, height: 150),
                  Box(width: 150, height: 150),
                  Box(width: 150, height: 150),
                  Box(width: 150, height: 150),
                ],
              ),
              SizedBox(height: 40),
              PText("Popular Projects", level: 3),
              SizedBox(height: 20),
              // Organically featured projects
              Column(
                children: [
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                  Box(width: MediaQuery.of(context).size.width, height: 100),
                ]
                    .map(
                      (e) => Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: e,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
