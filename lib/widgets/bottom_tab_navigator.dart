import 'package:flutter/material.dart';
import 'package:parallel/theme.dart';

// https://blog.logrocket.com/how-to-build-a-bottom-navigation-bar-in-flutter/

class BottomNavigator extends StatelessWidget {
  final void Function(int) onTap;
  final int selectedIndex;

  const BottomNavigator({
    super.key,
    required this.onTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Parallel.colors.primary.withOpacity(0.1),
      showUnselectedLabels: false,
      showSelectedLabels: true,
      selectedItemColor: Parallel.colors.primary,
      unselectedItemColor: Parallel.colors.foreground,
      currentIndex: selectedIndex,
      onTap: onTap,
      items: [
        navItem(Icons.explore),
        navItem(Icons.search),
        navItem(Icons.person),
      ],
    );
  }
}

BottomNavigationBarItem navItem(IconData icon) => BottomNavigationBarItem(
      label: "•",
      icon: Icon(icon, color: Parallel.colors.foreground),
      activeIcon: Icon(icon, color: Parallel.colors.primary),
    );
