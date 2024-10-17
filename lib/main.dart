import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtg_deck_creator/app_navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Magic Deck Scanner",
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
      )),
      routerConfig: AppNavigation.router,
    );
  }
}
