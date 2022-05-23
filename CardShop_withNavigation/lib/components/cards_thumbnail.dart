import 'package:flutter/material.dart';
import 'package:may10_shop/models/models.dart';

class CardsThumbnail extends StatelessWidget {
  final CardsList cardsList;

  const CardsThumbnail({
    Key? key,
    required this.cardsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext contest) {
              return AlertDialog(
                backgroundColor:
                    cardBackgroundColor(cardsList.type).withOpacity(.7),
                contentPadding: const EdgeInsets.all(5),
                title: Text(
                  cardsList.name,
                  textAlign: TextAlign.center,
                ),
                content: Container(
                  height: MediaQuery.of(context).size.height * .70,
                  padding: const EdgeInsets.all(5),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: cardBackgroundColor(cardsList.type)
                                .withOpacity(.9),
                            padding: const EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(cardsList.imageUrl),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          cardDisplayAttribute('Card Name', cardsList.name, context),
                          const SizedBox(
                            height: 3,
                          ),
                          cardDisplayAttribute('Evolution Stage', cardsList.evolutionStage, context),
                          const SizedBox(
                            height: 3,
                          ),
                          cardDisplayAttribute('Evolve From', cardsList.evolveFrom, context),
                          const SizedBox(
                            height: 3,
                          ),
                          cardDisplayAttribute('Type', cardsList.type, context),
                          const SizedBox(
                            height: 3,
                          ),
                          cardDisplayAttribute('HP', cardsList.hp.toString(), context),
                          const SizedBox(
                            height: 3,
                          ),
                          Container(
                            height: 135,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * .23,
                                  decoration: BoxDecoration(
                                      color: cardBackgroundColor(
                                              cardsList.weakness)
                                          .withOpacity(.8),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      typeImageSelector(
                                          type: cardsList.weakness, amount: 1),
                                      Text(
                                        'Weakness',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color:
                                              cardsList.weakness == 'Darkness'
                                                  ? Colors.white
                                                  : Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * .23,
                                  decoration: BoxDecoration(
                                      color: cardBackgroundColor(
                                              cardsList.resistance)
                                          .withOpacity(.8),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      typeImageSelector(
                                          type: cardsList.resistance,
                                          amount: 1),
                                      const Text(
                                        'Resistance',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * .23,
                                  decoration: BoxDecoration(
                                      color: cardBackgroundColor(
                                              cardsList.retreatCost[0]['type'])
                                          .withOpacity(.8),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      typeImageSelector(
                                          type: cardsList.retreatCost[0]
                                              ['type'],
                                          amount: cardsList.retreatCost[0]
                                              ['amount']),
                                      const Text(
                                        'Retreat Cost',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Container(
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * .25,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    'Card Number',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    cardsList.cardNumber,
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          cardDisplayAttribute('Rarity', cardsList.rarity, context),
                          const SizedBox(
                            height: 3,
                          ),
                          cardDisplayAttribute('Expansion', cardsList.expansion, context),
                          const SizedBox(
                            height: 3,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .70,
                            decoration: BoxDecoration(
                                color: cardBackgroundColor(cardsList.type)
                                    .withOpacity(.8),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      width: MediaQuery.of(context).size.width *
                                          .25,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Ability',
                                        style: TextStyle(
                                            color: cardsList.type == 'Darkness'
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: cardsList.type == 'Darkness'
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color:
                                                  cardsList.type == 'Darkness'
                                                      ? Colors.white
                                                      : Colors.black,
                                              offset: Offset(1, 3),
                                            ),
                                          ],
                                          color: cardBackgroundColor(
                                                  cardsList.type)
                                              .withOpacity(.9),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          cardsList.ability['abilityName'],
                                          style: TextStyle(
                                              color:
                                                  cardsList.type == 'Darkness'
                                                      ? Colors.white
                                                      : Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      cardsList.ability['abilityEffect'],
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                height: 90,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Container(
                                      color: cardBackgroundColor(cardsList.type)
                                          .withOpacity(.8),
                                      width: MediaQuery.of(context).size.width *
                                          .20,
                                      alignment: Alignment.center,
                                      child: attackCostImageSelector(
                                          cardsList.attacks[0]['attackCost']),
                                    ),
                                    Container(
                                      color: cardBackgroundColor(cardsList.type)
                                          .withOpacity(.8),
                                      width: MediaQuery.of(context).size.width *
                                          .35,
                                      alignment: Alignment.center,
                                      child: Text(
                                        cardsList.attacks[0]['attackName'],
                                        style: TextStyle(
                                            color: cardsList.type == 'Darkness'
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      color: cardBackgroundColor(cardsList.type)
                                          .withOpacity(.8),
                                      width: MediaQuery.of(context).size.width *
                                          .13,
                                      alignment: Alignment.center,
                                      child: Text(
                                        cardsList.attacks[0]['attackDamage'],
                                        style: TextStyle(
                                            color: cardsList.type == 'Darkness'
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              cardsList.attacks[0]['attackDescription'] ==
                                      'None'
                                  ? Container()
                                  : Container(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          .67,
                                      alignment: Alignment.center,
                                      child: Text(
                                        cardsList.attacks[0]
                                            ['attackDescription'],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                              const SizedBox(
                                height: 3,
                              ),
                              cardsList.attacks.length == 2
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      height: 90,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            color: cardBackgroundColor(
                                                    cardsList.type)
                                                .withOpacity(.8),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .20,
                                            alignment: Alignment.center,
                                            child: attackCostImageSelector(
                                                cardsList.attacks[1]
                                                    ['attackCost']),
                                          ),
                                          Container(
                                            color: cardBackgroundColor(
                                                    cardsList.type)
                                                .withOpacity(.8),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .35,
                                            alignment: Alignment.center,
                                            child: Text(
                                              cardsList.attacks[1]
                                                  ['attackName'],
                                              style: TextStyle(
                                                  color: cardsList.type ==
                                                          'Darkness'
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            color: cardBackgroundColor(
                                                    cardsList.type)
                                                .withOpacity(.8),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .13,
                                            alignment: Alignment.center,
                                            child: Text(
                                              cardsList.attacks[1]
                                                  ['attackDamage'],
                                              style: TextStyle(
                                                  color: cardsList.type ==
                                                          'Darkness'
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Container(),
                              cardsList.attacks.length == 2
                                  ? cardsList.attacks[1]['attackDescription'] ==
                                          'None'
                                      ? Container()
                                      : Container(
                                          color: Colors.white,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .65,
                                          child: Text(
                                            cardsList.attacks[1]
                                                ['attackDescription'],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                  : Container(),
                            ],
                          ),
                        ],
                      )),
                ),
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          height: 450,
          color: Colors.white24.withOpacity(.6),
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ClipRRect(
                  child: Image.asset(
                    '${cardsList.imageUrl}',
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                cardsList.name,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Divider(
                thickness: 2,
                color: Colors.black26,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '\$ ${cardsList.price.toStringAsFixed(2)}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      print('Add to Cart');
                    },
                    child: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.green,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Color cardBackgroundColor(String type) {
    Color backgroundColor = Colors.transparent;

    switch (type) {
      case 'Water':
        backgroundColor = Colors.blue;
        break;

      case 'Grass':
        backgroundColor = Colors.green;
        break;

      case 'Fire':
        backgroundColor = Colors.red;
        break;

      case 'Lightning':
        backgroundColor = Colors.yellow;
        break;

      case 'Fighting':
        backgroundColor = Colors.brown;
        break;

      case 'Darkness':
        backgroundColor = Colors.black87;
        break;

      case 'Metal':
        backgroundColor = Colors.grey;
        break;

      case 'Colorless':
        backgroundColor = Colors.white70;
        break;

      case 'Dragon':
        backgroundColor = Colors.amber;
        break;

      case 'Psychic':
        backgroundColor = Colors.purple;
        break;
      default:
        backgroundColor = Colors.white;
    }
    return backgroundColor;
  }

  Widget typeImageSelector({required String type, required int amount}) {
    if (type == 'None' || amount == 0) {
      return const Text(
        'None',
        style: TextStyle(
          color: Colors.black,
        ),
      );
    } else {
      if (amount == 1) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('type_pics/${type}.png'),
              height: 35,
              alignment: Alignment.center,
            ),
          ],
        );
      } else if (amount == 2) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('type_pics/${type}.png'),
              height: 35,
              alignment: Alignment.center,
            ),
            Image(
              image: AssetImage('type_pics/${type}.png'),
              height: 35,
              alignment: Alignment.center,
            ),
          ],
        );
      } else if (amount == 3) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('type_pics/${type}.png'),
                  height: 35,
                  alignment: Alignment.center,
                ),
                Image(
                  image: AssetImage('type_pics/${type}.png'),
                  height: 35,
                  alignment: Alignment.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('type_pics/${type}.png'),
                  height: 35,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('type_pics/${type}.png'),
                  height: 35,
                  alignment: Alignment.center,
                ),
                Image(
                  image: AssetImage('type_pics/${type}.png'),
                  height: 35,
                  alignment: Alignment.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('type_pics/${type}.png'),
                  height: 35,
                  alignment: Alignment.center,
                ),
                Image(
                  image: AssetImage('type_pics/${type}.png'),
                  height: 35,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ],
        );
      }
    }
  }

  Widget attackCostImageSelector(List attackCost) {
    if (attackCost.length == 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < attackCost[0]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[0]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
        ],
      );
    } else if (attackCost.length == 2) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < attackCost[0]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[0]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
          for (int i = 0; i < attackCost[1]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[1]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
        ],
      );
    } else if (attackCost.length == 3) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < attackCost[0]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[0]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
          for (int i = 0; i < attackCost[1]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[1]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
          for (int i = 0; i < attackCost[2]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[2]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < attackCost[0]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[0]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
          for (int i = 0; i < attackCost[1]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[1]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
          for (int i = 0; i < attackCost[2]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[2]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
          for (int i = 0; i < attackCost[3]['amount']; i += 1)
            Image(
              image: AssetImage('type_pics/${attackCost[3]['type']}.png'),
              height: 19,
              alignment: Alignment.center,
            ),
        ],
      );
    }
  }

  Widget cardDisplayAttribute(String title, String attribute,context){
    return
      Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding:  EdgeInsets.all(10),
              width:
              MediaQuery.of(context).size.width * .25,
              decoration:  const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(10))),
              alignment: Alignment.centerLeft,
              child:  Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
             const SizedBox(
              width: 3,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width:
              MediaQuery.of(context).size.width * .45,
              decoration:  const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(10))),
              alignment: Alignment.centerLeft,
              child: Text(
                attribute,
                style:  const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );

  }




}
