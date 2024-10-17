import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const String id = 'home_screen';
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text('Setting Screen'),
    ));
  }
}
