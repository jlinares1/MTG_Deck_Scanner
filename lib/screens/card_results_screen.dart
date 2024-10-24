import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_deck_creator/providers/card_data_provider.dart';

class CardResultsScreen extends ConsumerWidget {
  static const String id = 'card_result_screen';
  final String cardName;
  const CardResultsScreen({super.key, required this.cardName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardData = ref.watch(cardDataProvider(cardName));
    return Scaffold(
      body: cardData.when(
          data: (data) {
            return Center(child: Text(data.name));
          },
          error: ((error, stacktrace) => Center(child: Text(error.toString()))),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
