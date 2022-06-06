import 'package:flutter/material.dart';
import 'package:may10_shop/components/components.dart';
import 'package:may10_shop/models/models.dart';

class FeaturedExpansionListView extends StatelessWidget {
  final List<FeaturedExpansion> cards;

  const FeaturedExpansionListView({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Stack(
            children: const [
              Text(
                'Featured Expansion Pack',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Pokemon Solid',
                  color: Colors.yellow,
                ),
              ),
              Text(
                'Featured Expansion Pack',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Pokemon Hollow',
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final card = cards[index];
              

                return buildCard(card);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 50,
                );
              },
              itemCount: cards.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(FeaturedExpansion card) {
    if (card.id == 1) {
      return const Expansion1();
    } else if (card.id == 2) {
      return const Expansion2();
    } else if (card.id == 3) {
      return const Expansion3();
    } else if (card.id == 4) {
      return const Expansion4();
    } else if (card.id == 5) {
      return const Expansion5();
    } else if (card.id == 6) {
      return const Expansion6();
    } else if (card.id == 7) {
      return const Expansion7();
    } else {
      throw Exception('This card doesn\'t exist!');
    }
  }
}
