// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:parallel/theme.dart';
import 'package:parallel/widgets/display/box.dart';
import 'package:parallel/widgets/layout/item_carousel.dart';

/* SHOWCASE PAGE
    This is where completed projects will be featured. Popular projects 
    (determined by youtube success) will make their way to the top of this page.
    Users can also pay to advertise their completed projects.
*/

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

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
              Text("Showcase", style: Parallel.textStyles.h1()),
              SizedBox(height: 20),
              Text("Featured Projects", style: Parallel.textStyles.h3()),
              SizedBox(height: 20),
              // Paid featured projects
              ItemCarousel(height: 150),
              SizedBox(height: 40),
              Text("Popular Projects", style: Parallel.textStyles.h3()),
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
