import 'package:flutter/material.dart';
import 'package:parallel/pages/core/discover_page.dart';
import 'package:parallel/pages/core/explore_page.dart';
import 'package:parallel/pages/core/profile_page.dart';
import 'package:parallel/pages/temp/test_page.dart';
import 'package:parallel/widgets/layout/bottom_tab_navigator.dart';

class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  bool isAuthenticated = true; // TODO: temporary
  int _selectedPageIndex = 0;
  final List<Widget> _pages = [
    DiscoverPage(),
    ExplorePage(),
    ProfilePage(),
  ];

  void changePage(int i) {
    setState(() {
      _selectedPageIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (isAuthenticated)
        ? Scaffold(
            bottomNavigationBar: BottomNavigator(
              selectedIndex: _selectedPageIndex,
              onTap: changePage,
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0.0),
                child: IndexedStack(
                  index: _selectedPageIndex,
                  children: _pages,
                ),
              ),
            ),
          )
        : TestPage(); // TODO: LoginPage
  }
}
