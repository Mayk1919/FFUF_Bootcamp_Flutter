import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:may10_shop/models/models.dart';

class CardTile extends StatelessWidget {
  final CardItem item;
  final Function(bool?)? onComplete;
  final TextDecoration textDecoration;

  CardTile({
    Key? key,
    required this.item,
    this.onComplete,
  })  : textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: item.backgroundColor.withOpacity(.3),
      child: SizedBox(
        height: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 5.0,
                  color: item.color,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                SizedBox(
                  child: Image.asset(item.imageUrl),
                  width: 70,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(decoration: textDecoration),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Type: ${item.type}',
                      style: TextStyle(decoration: textDecoration),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Hp: ${item.hp}',
                      style: TextStyle(decoration: textDecoration),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    buildDate(),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price: \$ ${item.price.toStringAsFixed(2)}',
                      style: TextStyle(decoration: textDecoration),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Quantity: ${item.quantity.toString()}',
                      style: TextStyle(decoration: textDecoration),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Total: \$ ${(item.quantity * item.price).toStringAsFixed(2)}',
                      style: TextStyle(decoration: textDecoration),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                buildCheckBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDate() {
    final dateFormatter = DateFormat('MMMM dd h:mm a');
    final dateString = dateFormatter.format(item.date);
    return Text(
      dateString,
      style: TextStyle(decoration: textDecoration),
    );
  }

  Widget buildCheckBox() {
    return Checkbox(
      value: item.isComplete,
      onChanged: onComplete,
    );
  }
}
