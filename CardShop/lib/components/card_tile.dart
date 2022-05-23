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
    // Todo: Change this Widget
    return Container(
      color: item.backgroundColor.withOpacity(.3),
      child: SizedBox(
        height: 100.0,
        // Todo: Replace this color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Todo: Add Row to group (name, date, importance)
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

            // Todo: Add Row to group (quantity, checkbox)
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

  // Todo: Add BuildImportance()
  // Here we created a helper method to construct the importance label.
  // We can check the item's importance and display the correct Text.

// Todo: Add buildDate()
  // Here we created a helper method to format and convert DateTime into a dateString format
  Widget buildDate() {
    final dateFormatter = DateFormat('MMMM dd h:mm a');
    final dateString = dateFormatter.format(item.date);
    return Text(
      dateString,
      style: TextStyle(decoration: textDecoration),
    );
  }

// Todo: Add buildCheckBox()
  Widget buildCheckBox() {
    return Checkbox(
      // Toggles the checkbox on or off based on item.isComplete
      value: item.isComplete,
      // Triggers the onComplete callback when the user taps the checkbox
      onChanged: onComplete,
    );
  }
}
