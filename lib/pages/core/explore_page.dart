// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:parallel/widgets/box.dart';
import 'package:parallel/widgets/text.dart';
import 'package:parallel/widgets/item_carousel.dart';
import 'package:parallel/widgets/search_bar.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

// https://pub.dev/packages/sticky_headers

/* EXPLORE PAGE
    This is where featured artists and educators will be featured. This can 
    come from paid promotions or some sort of organic rating system.

    On this page, the user can browse user profiles in a feed, filter by
    educators/animators, and search for specific users or topics using 
    the search bar.
*/

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              PText("Explore", level: 1),
              SizedBox(height: 20),
              StickyHeader(
                header: SearchBar(),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    PText("Featured Profiles", level: 3),
                    SizedBox(height: 20),
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
                    PText("Popular Profiles", level: 3),
                    SizedBox(height: 20),
                    // Organically featured projects
                    Column(
                      children: [
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                        Box(
                            width: MediaQuery.of(context).size.width,
                            height: 100),
                      ]
                          .map(
                            (e) => Container(
                              padding: EdgeInsets.only(bottom: 20),
                              child: e,
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
