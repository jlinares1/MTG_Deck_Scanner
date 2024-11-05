import 'package:flutter/material.dart';

class DecksScreen extends StatelessWidget {
  static const String id = 'decks_screen';
  const DecksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Center(child: Text('Deck Screen')));
  }
}
