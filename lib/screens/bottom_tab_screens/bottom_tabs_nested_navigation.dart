import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomTabsNestedNavigation extends StatelessWidget {
  const BottomTabsNestedNavigation({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    void _goBranch(int index) {
      navigationShell.goBranch(index,
          initialLocation: index == navigationShell.currentIndex);
    }

    return Scaffold(
      body: SafeArea(child: navigationShell),
      bottomNavigationBar: SizedBox(
        height: Platform.isIOS ? 85 : 55,
        child: BottomNavigationBar(
          currentIndex: navigationShell.currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue.shade600,
          unselectedItemColor: Colors.grey,
          elevation: 0,
          iconSize: 26,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.style_outlined), label: 'Decks'),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Scanner'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ],
          onTap: _goBranch,
        ),
      ),
    );
  }
}
