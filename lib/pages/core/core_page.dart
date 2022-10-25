import 'package:flutter/material.dart';
import 'package:parallel/pages/core/discover_page.dart';
import 'package:parallel/pages/core/explore_page.dart';
import 'package:parallel/pages/core/profile_page.dart';
import 'package:parallel/pages/test_page.dart';
import 'package:parallel/widgets/bottom_tab_navigator.dart';

class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  final List<Widget> _pages = [
    DiscoverPage(),
    ExplorePage(),
    ProfilePage(),
  ];

  int _selectedPageIndex = 0;

  bool isAuthenticated = true; // TODO: temporary

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
            body: IndexedStack(
              index: _selectedPageIndex,
              children: _pages,
            ),
          )
        : TestPage(); // TODO: LoginPage
  }
}
