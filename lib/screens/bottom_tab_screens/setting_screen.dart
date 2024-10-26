import 'package:flutter/material.dart';
import 'package:mtg_deck_creator/models/mtg_card_response.dart';

class SettingScreen extends StatelessWidget {
  static const String id = 'setting_screen';
  const SettingScreen({super.key});

  MTGCardResponse readData() {
    const json = {
      "object": "card",
      "id": "73e40916-3502-448a-a509-f6a6ff3cd73d",
      "oracle_id": "49475268-be95-4670-a5ca-2f2b6c5cf005",
      "multiverse_ids": [574605],
      "mtgo_id": 102726,
      "arena_id": 82177,
      "tcgplayer_id": 283665,
      "cardmarket_id": 672675,
      "name": "Flowstone Kavu",
      "lang": "en",
      "released_at": "2022-09-09",
      "uri":
          "https://api.scryfall.com/cards/73e40916-3502-448a-a509-f6a6ff3cd73d",
      "scryfall_uri":
          "https://scryfall.com/card/dmu/125/flowstone-kavu?utm_source=api",
      "layout": "normal",
      "highres_image": true,
      "image_status": "highres_scan",
      "image_uris": {
        "small":
            "https://cards.scryfall.io/small/front/7/3/73e40916-3502-448a-a509-f6a6ff3cd73d.jpg?1673307350",
        "normal":
            "https://cards.scryfall.io/normal/front/7/3/73e40916-3502-448a-a509-f6a6ff3cd73d.jpg?1673307350",
        "large":
            "https://cards.scryfall.io/large/front/7/3/73e40916-3502-448a-a509-f6a6ff3cd73d.jpg?1673307350",
        "png":
            "https://cards.scryfall.io/png/front/7/3/73e40916-3502-448a-a509-f6a6ff3cd73d.png?1673307350",
        "art_crop":
            "https://cards.scryfall.io/art_crop/front/7/3/73e40916-3502-448a-a509-f6a6ff3cd73d.jpg?1673307350",
        "border_crop":
            "https://cards.scryfall.io/border_crop/front/7/3/73e40916-3502-448a-a509-f6a6ff3cd73d.jpg?1673307350"
      },
      "mana_cost": "{2}{R}",
      "cmc": 3.0,
      "type_line": "Creature — Kavu",
      "oracle_text":
          "Menace (This creature can't be blocked except by two or more creatures.)\n{R}: Flowstone Kavu gets +1/-1 until end of turn.",
      "power": "2",
      "toughness": "3",
      "colors": ["R"],
      "color_identity": ["R"],
      "keywords": ["Menace"],
      "legalities": {
        "standard": "legal",
        "future": "legal",
        "historic": "legal",
        "timeless": "legal",
        "gladiator": "legal",
        "pioneer": "legal",
        "explorer": "legal",
        "modern": "legal",
        "legacy": "legal",
        "pauper": "legal",
        "vintage": "legal",
        "penny": "not_legal",
        "commander": "legal",
        "oathbreaker": "legal",
        "standardbrawl": "legal",
        "brawl": "legal",
        "alchemy": "not_legal",
        "paupercommander": "legal",
        "duel": "legal",
        "oldschool": "not_legal",
        "premodern": "not_legal",
        "predh": "not_legal"
      },
      "games": ["paper", "arena", "mtgo"],
      "reserved": false,
      "foil": true,
      "nonfoil": true,
      "finishes": ["nonfoil", "foil"],
      "oversized": false,
      "promo": false,
      "reprint": false,
      "variation": false,
      "set_id": "4e47a6cd-cdeb-4b0f-8f24-cfe1a0127cb3",
      "set": "dmu",
      "set_name": "Dominaria United",
      "set_type": "expansion",
      "set_uri":
          "https://api.scryfall.com/sets/4e47a6cd-cdeb-4b0f-8f24-cfe1a0127cb3",
      "set_search_uri":
          "https://api.scryfall.com/cards/search?order=set&q=e%3Admu&unique=prints",
      "scryfall_set_uri": "https://scryfall.com/sets/dmu?utm_source=api",
      "rulings_uri":
          "https://api.scryfall.com/cards/73e40916-3502-448a-a509-f6a6ff3cd73d/rulings",
      "prints_search_uri":
          "https://api.scryfall.com/cards/search?order=released&q=oracleid%3A49475268-be95-4670-a5ca-2f2b6c5cf005&unique=prints",
      "collector_number": "125",
      "digital": false,
      "rarity": "common",
      "flavor_text":
          "The kavu adjusted easily to the Rathi overlay, incorporating the invasive flowstone into their own adaptable forms.",
      "card_back_id": "0aeebaf5-8c7d-4636-9e82-8c27447861f7",
      "artist": "Simon Dominic",
      "artist_ids": ["b0e80135-db5a-4b88-a0bc-815a0e94faa1"],
      "illustration_id": "caef3892-e397-420e-a92c-544dde4683c6",
      "border_color": "black",
      "frame": "2015",
      "full_art": false,
      "textless": false,
      "booster": true,
      "story_spotlight": false,
      "edhrec_rank": 23611,
      "prices": {
        "usd": "0.02",
        "usd_foil": "0.04",
        "usd_etched": null,
        "eur": "0.10",
        "eur_foil": "0.06",
        "tix": "0.03"
      },
      "related_uris": {
        "gatherer":
            "https://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=574605&printed=false",
        "tcgplayer_infinite_articles":
            "https://tcgplayer.pxf.io/c/4931599/1830156/21018?subId1=api&trafcat=infinite&u=https%3A%2F%2Finfinite.tcgplayer.com%2Fsearch%3FcontentMode%3Darticle%26game%3Dmagic%26partner%3Dscryfall%26q%3DFlowstone%2BKavu",
        "tcgplayer_infinite_decks":
            "https://tcgplayer.pxf.io/c/4931599/1830156/21018?subId1=api&trafcat=infinite&u=https%3A%2F%2Finfinite.tcgplayer.com%2Fsearch%3FcontentMode%3Ddeck%26game%3Dmagic%26partner%3Dscryfall%26q%3DFlowstone%2BKavu",
        "edhrec": "https://edhrec.com/route/?cc=Flowstone+Kavu"
      },
      "purchase_uris": {
        "tcgplayer":
            "https://tcgplayer.pxf.io/c/4931599/1830156/21018?subId1=api&u=https%3A%2F%2Fwww.tcgplayer.com%2Fproduct%2F283665%3Fpage%3D1",
        "cardmarket":
            "https://www.cardmarket.com/en/Magic/Products/Singles/Dominaria-United/Flowstone-Kavu?referrer=scryfall&utm_campaign=card_prices&utm_medium=text&utm_source=scryfall",
        "cardhoarder":
            "https://www.cardhoarder.com/cards/102726?affiliate_id=scryfall&ref=card-profile&utm_campaign=affiliate&utm_medium=card&utm_source=scryfall"
      }
    };
    return MTGCardResponse.fromJson(json as Map<String, dynamic>);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Result'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(
                readData().imageUrls.artCrop,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Text(readData().name)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
