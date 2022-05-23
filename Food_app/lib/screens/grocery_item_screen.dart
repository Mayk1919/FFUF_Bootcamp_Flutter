import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:food_app/models/models.dart';
import 'package:food_app/components/grocery_tile.dart';

class GroceryItemScreen extends StatefulWidget {
  // onCreate is a callback that lets us know when new item is created
  final Function(GroceryItem) onCreate;
  // onUpdate is a callback that returns the updated grocery item
  final Function(GroceryItem) onUpdate;
  // The grocery item that the user clicked.
  final GroceryItem? originalItem;
  // isUpdating determines whether the user is creating or editing an item
  final bool isUpdating;

  const GroceryItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  _GroceryItemScreenState createState() => _GroceryItemScreenState();
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  // Todo: Add grocery item screen state properties
  // _nameController is a TextEditingController.
  // This controller listens for text changes.
  // It controls the value displayed in a text field
  final _nameController = TextEditingController();
  // _name stores the name of the item
  String _name = '';
  // _importance stores the importance level
  Importance _importance = Importance.LOW;
  // _dueDate stores the current date and time.
  DateTime _dueDate = DateTime.now();
  // _timeOfDay stores the current time
  TimeOfDay _timeOfDay = TimeOfDay.now();
  // _currentColor stores the color label.
  Color _currentColor = Colors.red;
  // _currentSliderValue stores the quantity of an item
  int _currentSliderValue = 0;

  // Todo: Add initState()
  // Before a widget builds, initState() initializes its properties before use
  @override
  void initState() {
    // When the originalItem is not null, the user is editing an existing item.
    // In this case, we must configure the widget to show the item's values.
    final originalItem = widget.originalItem;
    if (originalItem != null) {
      _nameController.text = originalItem.name;
      _name = originalItem.name;
      _currentSliderValue = originalItem.quantity;
      _importance = originalItem.importance;
      _currentColor = originalItem.color;
      final date = originalItem.date;
      _timeOfDay = TimeOfDay(
        hour: date.hour,
        minute: date.minute,
      );
      _dueDate = date;
    }
    // Adds a listener to listen for text field changes. When the text changes, we set the _name
    _nameController.addListener(() {
      setState(() {
        _name = _nameController.text;
      });
    });

    super.initState();
  }

  // Todo: Add dispose()

  @override
  Widget build(BuildContext context) {
    // Todo: Add GroceryItemScreen Scaffold
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // Todo: Add Callback handler
              // When the user taps Save, it will take all the state properties and
              // create a GroceryItem
              final groceryItem = GroceryItem(
                id: widget.originalItem?.id ?? const Uuid().v1(),
                name: _nameController.text,
                importance: _importance,
                color: _currentColor,
                quantity: _currentSliderValue,
                date: DateTime(
                  _dueDate.year,
                  _dueDate.month,
                  _dueDate.day,
                  _timeOfDay.hour,
                  _timeOfDay.minute,
                ),
              );
              // if the user is updating an existing item, call onUpdate
              if (widget.isUpdating) {
                widget.onUpdate(groceryItem);
              }
              // if the user is creating a new item, call onCreate
              else {
                widget.onCreate(groceryItem);
              }
            },
            icon: const Icon(Icons.check),
          ),
        ],
        title: const Text('Grocery Item'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          // Todo: Add name Textfield
          buildNameField(),
          // Todo: Add Importance selection
          buildImportanceField(),
          // Todo: Add date picker
          buildDateField(context),
          buildTimeField(context),
          // Todo: Add color picker
          const SizedBox(
            height: 10,
          ),
          buildColorPicker(context),
          // Todo: Add slider
          const SizedBox(
            height: 10,
          ),
          buildQuantityField(),
          // Todo: Add Grocery Tile
          // This code uses all the state properties of the widget to create a GroceryItem,
          // then passes it to GroceryTile to configure itself
          GroceryTile(
            item: GroceryItem(
              id: 'preview',
              name: _name,
              importance: _importance,
              color: _currentColor,
              quantity: _currentSliderValue,
              date: DateTime(
                _dueDate.year,
                _dueDate.month,
                _dueDate.day,
                _timeOfDay.hour,
                _timeOfDay.minute,
              ),
            ),
          ),
        ]),
      ),
    );
  }

  // Todo: Add buildNameField()
  Widget buildNameField() {
    // Creates a column to lay elements out vertically
    return Column(
      // Aligns all widgets in the column to the left
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Item Name'),
        TextField(
          // Sets the TextField's TextEditingController
          controller: _nameController,
          // Sets the cursor color
          cursorColor: _currentColor,
          // Styles the text field using InputDecoration
          decoration: InputDecoration(
            // Includes a hint to give users an example of what to write
            hintText: 'E.g. Apples, Banana, 1 Bag of salt',
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: _currentColor),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: _currentColor),
            ),
          ),
        ),
      ],
    );
  }

  // Todo: Add buildImportanceField()
  Widget buildImportanceField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Importance'),
        // Add Wrap and space each child widget 10 pixels apart.
        // Wrap lays out children horizontally.
        // When there's no room, it wraps to the next line
        Wrap(
          spacing: 10.0,
          children: [
            // InputChip
            // FilterChip
            // ActionChip
            // ChoiceChip will allows user to make a single selection given a set of options
            ChoiceChip(
              selectedColor: Colors.red,
              label: const Text('low'),
              selected: _importance == Importance.LOW,
              onSelected: (selected) {
                setState(() {
                  _importance = Importance.LOW;
                });
              },
            ),
            ChoiceChip(
              selectedColor: Colors.red,
              label: const Text('medium'),
              selected: _importance == Importance.MEDIUM,
              onSelected: (selected) {
                setState(() {
                  _importance = Importance.MEDIUM;
                });
              },
            ),
            ChoiceChip(
              selectedColor: Colors.red,
              label: const Text('high'),
              selected: _importance == Importance.HIGH,
              onSelected: (selected) {
                setState(() {
                  _importance = Importance.HIGH;
                });
              },
            ),
          ],
        )
      ],
    );
  }

  // Todo: Add buildDateField()
  Widget buildDateField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Date'),
            TextButton(
              onPressed: () async {
                // Gets the current date when the user presses the button
                final currentDate = DateTime.now();

                // Presents the date picker.
                // Restrict the date picker and only allow the user to pick a date form today
                // until 5 years in the future
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: currentDate,
                  lastDate: DateTime(currentDate.year + 5),
                );

                // Sets _dueDate after the user selects a date
                setState(() {
                  if (selectedDate != null) {
                    _dueDate = selectedDate;
                  }
                });
              },
              child: Text('Select'),
            ),
          ],
        ),
        Text('${DateFormat('yyyy-MM-dd').format(_dueDate)}'),
      ],
    );
  }

  // Todo: add buildTimeField()
  Widget buildTimeField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Time of Day'),
            TextButton(
              onPressed: () async {
                final timeOfDay = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                setState(() {
                  if (timeOfDay != null) {
                    _timeOfDay = timeOfDay;
                  }
                });
              },
              child: Text('Select'),
            ),
          ],
        ),
        Text('${_timeOfDay.format(context)}'),
      ],
    );
  }

  // Todo: add buildColorPicker()
  Widget buildColorPicker(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50.0,
              width: 10.0,
              color: _currentColor,
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'Color',
            ),
          ],
        ),
        TextButton(
          child: const Text('Select'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: BlockPicker(
                      pickerColor: Colors.white,
                      onColorChanged: (color) {
                        setState(() {
                          _currentColor = color;
                        });
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Save'),
                      )
                    ],
                  );
                });
          },
        ),
      ],
    );
  }

  // Todo: add buildQuantityField()
  Widget buildQuantityField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Add a title and the quantity labels to the quantity section by creating a Row
        // that contains two Texts. separate with SizeBoxed.
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Text('Quantity'),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              _currentSliderValue.toInt().toString(),
            ),
          ],
        ),
        Slider(
            inactiveColor: _currentColor.withOpacity(0.5),
            activeColor: _currentColor,
            min: 0.0,
            max: 100.0,
            value: _currentSliderValue.toDouble(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value.toInt();
              });
            })
      ],
    );
  }
}
