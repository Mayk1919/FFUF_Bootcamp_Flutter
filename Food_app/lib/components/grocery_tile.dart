import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:food_app/models/models.dart';

class GroceryTile extends StatelessWidget {
  // We include a GroceryItem to configure the tile
  final GroceryItem item;
  // onComplete callback handler that lets you know whether the user toggled the
  // checkbox on or off
  final Function(bool?)? onComplete;
  // textDecoration this one will helps us to style all the texts
  final TextDecoration textDecoration;

  // When we initialize a GroceryTile, we check the item to see if the user marked it as
  // complete. If so, we show a strike through the text, otherwise we display the text as
  // normal
  GroceryTile({
    Key? key,
    required this.item,
    this.onComplete,
  })  : textDecoration = item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // Todo: Change this Widget
    return SizedBox(
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
                  buildDate(),
                  const SizedBox(
                    height: 4.0,
                  ),
                  buildImportance(),
                ],
              ),
            ],
          ),

          // Todo: Add Row to group (quantity, checkbox)
          Row(
            children: [
              Text(
                item.quantity.toString(),
                style: TextStyle(decoration: textDecoration),
              ),
              buildCheckBox(),
            ],
          ),
        ],
      ),
    );
  }

  // Todo: Add BuildImportance()
  // Here we created a helper method to construct the importance label.
  // We can check the item's importance and display the correct Text.
  Widget buildImportance() {
    if (item.importance == Importance.LOW) {
      return Text(
        'Low',
        style: TextStyle(decoration: textDecoration),
      );
    } else if (item.importance == Importance.MEDIUM) {
      return Text(
        'Medium',
        style: TextStyle(decoration: textDecoration),
      );
    } else if (item.importance == Importance.HIGH) {
      return Text(
        'High',
        style: TextStyle(decoration: textDecoration),
      );
    } else {
      throw Exception('This importance type does not exist');
    }
  }

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
