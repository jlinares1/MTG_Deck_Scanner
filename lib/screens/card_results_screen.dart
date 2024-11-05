import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_deck_creator/constants.dart';
import 'package:mtg_deck_creator/providers/card_data_provider.dart';

class CardResultsScreen extends ConsumerWidget {
  static const String id = 'card_result_screen';
  final String cardName;
  const CardResultsScreen({super.key, required this.cardName});

  Color legalitiesColorSelector(String legalities) {
    return switch (legalities) {
      'legal' => const Color(0xFF00FD10),
      'not_legal' => Colors.red,
      _ => Colors.grey
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardData = ref.watch(cardDataProvider(cardName));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card result'),
      ),
      body: cardData.when(
          data: (data) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      data.imageUrls.artCrop,
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),

                  /// Name and type line
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                data.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                data.typeLine,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                data.manaCost,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                              ),
                              Text(
                                data.rarity,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),

                  /// Oracle Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Text('ORACLE TEXT:',
                              style: kBoxLabelTextStyle),
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD3D3D3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 10.0),
                            child: Text(
                              data.oracleText,
                              softWrap: true,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),

                  /// Basic Information
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Text(
                              'BASIC INFORMATION:',
                              style: kBoxLabelTextStyle,
                            )),
                        Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD3D3D3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 10.0),
                            child: Column(
                              children: [
                                Text(
                                  'Power-Toughness: ${data.power} / ${data.toughness}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Divider(),
                                Text(
                                  'Artist: ${data.artist}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Divider(),
                                Text(
                                  'Set: ${data.setName}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Divider(),
                                Text(
                                  'Has foil version: ${data.foil ? 'Yes' : 'No'}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),

                  /// Prices
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child:
                              const Text('PRICES:', style: kBoxLabelTextStyle),
                        ),
                        Container(
                          height: 75,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD3D3D3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      children: [
                                        const Text('USD:'),
                                        Text(
                                            '\$ ${data.prices.usd != null ? double.parse(data.prices.usd ?? '') : '-'}'),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      children: [
                                        const Text('USD FOIL:'),
                                        Text(
                                            '\$ ${data.prices.usd != null ? double.parse(data.prices.usdFoil ?? '') : '-'}'),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  /// Legalities
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Text('LEGALITIES:',
                              style: kBoxLabelTextStyle),
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD3D3D3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 8.0),
                              child: GridView.count(
                                crossAxisCount: 2,
                                primary: false,
                                padding: const EdgeInsets.all(2),
                                childAspectRatio: 6.5,
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                        color: legalitiesColorSelector(
                                            data.legalities.standard),
                                        borderRadius: BorderRadius.circular(5)),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'STANDARD',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(2),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: legalitiesColorSelector(
                                            data.legalities.commander),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      'COMMANDER',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(2),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: legalitiesColorSelector(
                                            data.legalities.modern),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      'MODERN',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(2),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: legalitiesColorSelector(
                                            data.legalities.pioneer),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      'PIONEER',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(2),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: legalitiesColorSelector(
                                            data.legalities.alchemy),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      'ALCHEMY',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(2),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: legalitiesColorSelector(
                                            data.legalities.brawl),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      'BRAWL',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(2),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: legalitiesColorSelector(
                                            data.legalities.legacy),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      'LEGACY',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(2),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: legalitiesColorSelector(
                                            data.legalities.pauper),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      'PAUPER',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          error: ((error, stacktrace) => Center(child: Text(error.toString()))),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
