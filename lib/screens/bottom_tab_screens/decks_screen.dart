import 'package:flutter/material.dart';
import 'package:mtg_deck_creator/screens/add_deck_screen.dart';

class DecksScreen extends StatefulWidget {
  static const String id = 'decks_screen';
  const DecksScreen({super.key});

  @override
  State<DecksScreen> createState() => _DecksScreenState();
}

class _DecksScreenState extends State<DecksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decks'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  context: context,
                  builder: (context) => const AddDeckScreen(),
                );
              },
              icon: Icon(
                Icons.add,
                color: Colors.blue.shade600,
              ))
        ],
      ),
      body: const SafeArea(
          child: Center(child: Text('No decks have been to added'))),
    );
  }
}
