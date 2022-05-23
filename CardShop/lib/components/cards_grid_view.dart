import 'package:flutter/material.dart';
import 'package:may10_shop/components/cards_thumbnail.dart';
import 'package:may10_shop/components/components.dart';
import 'package:may10_shop/models/models.dart';

class CardsGridView extends StatefulWidget {
  final List<CardsList> cardsList;
  const CardsGridView(
      {
  Key? key,
  required this.cardsList,
  }) : super(key: key);

  @override
  State<CardsGridView> createState() => _CardsGridViewState(cardsList: this.cardsList,);
}

class _CardsGridViewState extends State<CardsGridView> {
  final List<CardsList> cardsList;

  _CardsGridViewState({
    required this.cardsList,

  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Stack(
          children: const [
            Text(
              'Card Collection',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Pokemon Solid',
                color: Colors.yellow,
              ),
            ),
            Text(
              'Card Collection',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Pokemon Hollow',
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: GridView.builder(
              itemCount: cardsList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.55),
              itemBuilder: (context, index) {
                final card = cardsList[index];
                return CardsThumbnail(cardsList: card);
              },
            ),
          ),
        ),
      ],
    );
  }
}









//
// class CardsGridView extends StatelessWidget {
//   final List<CardsList> cardsList;
//
//   const CardsGridView({
//     Key? key,
//     required this.cardsList,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Stack(
//           children: const [
//             Text(
//               'Card Collection',
//               style: TextStyle(
//                 fontSize: 25,
//                 fontFamily: 'Pokemon Solid',
//                 color: Colors.yellow,
//               ),
//             ),
//             Text(
//               'Card Collection',
//               style: TextStyle(
//                 fontSize: 25,
//                 fontFamily: 'Pokemon Hollow',
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(5),
//             child: GridView.builder(
//               itemCount: cardsList.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, childAspectRatio: 0.55),
//               itemBuilder: (context, index) {
//                 final card = cardsList[index];
//                 return CardsThumbnail(cardsList: card);
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
