import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:may10_shop/models/models.dart';
import 'package:may10_shop/components/card_tile.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:may10_shop/api/mock_app_service.dart';

class CardItemScreen extends StatefulWidget {
  final Function(CardItem) onCreate;
  final Function(CardItem) onUpdate;
  final CardItem? originalItem;
  final bool isUpdating;

  const CardItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  _CardItemScreenState createState() => _CardItemScreenState();
}

class _CardItemScreenState extends State<CardItemScreen> {
  final _nameController = TextEditingController();

  double _price = 0.0;
  int _cardId = 0;
  String _name = '';
  String _evolutionStage = '';
  String _evolveFrom = '';
  String _type = '';
  int _hp = 0;
  String _weakness = '';
  String _resistance = '';
  List _retreatCost = List.empty(growable: true);
  String _cardNumber = '';
  String _rarity = '';
  String _expansion = '';
  Map _ability = {};
  List _attacks = List.empty(growable: true);
  String _imageUrl = 'background/expansion_background.jpg';
  bool _isComplete = false;
  final DateTime _date = DateTime.now();
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  Color _currentColor = Colors.red;
  Color _backgroundColor = Colors.transparent;
  int _currentSliderValue = 0;

  @override
  void initState() {
    final originalItem = widget.originalItem;
    if (originalItem != null) {
      _nameController.text = originalItem.name;
      _cardId = originalItem.cardId;
      _price = originalItem.price;
      _name = originalItem.name;
      _evolutionStage = originalItem.evolutionStage;
      _evolveFrom = originalItem.evolveFrom;
      _type = originalItem.type;
      _hp = originalItem.hp;
      _weakness = originalItem.weakness;
      _resistance = originalItem.resistance;
      _retreatCost = originalItem.retreatCost;
      _cardNumber = originalItem.cardNumber;
      _rarity = originalItem.rarity;
      _expansion = originalItem.expansion;
      _ability = originalItem.ability;
      _attacks = originalItem.attacks;
      _imageUrl = originalItem.imageUrl;
      _isComplete = originalItem.isComplete;
      _backgroundColor = originalItem.backgroundColor;

      _currentSliderValue = originalItem.quantity;
      _currentColor = originalItem.color;
      final date = originalItem.date;
      _timeOfDay = TimeOfDay(
        hour: date.hour,
        minute: date.minute,
      );
      _dueDate = date;
    }
    _nameController.addListener(() {
      setState(() {
        _name = _nameController.text;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              final cardItem = CardItem(
                id: widget.originalItem?.id ?? const Uuid().v1(),
                cardId: _cardId,
                price: _price,
                name: _name,
                evolutionStage: _evolutionStage,
                evolveFrom: _evolveFrom,
                type: _type,
                hp: _hp,
                weakness: _weakness,
                resistance: _resistance,
                retreatCost: _retreatCost,
                cardNumber: _cardNumber,
                rarity: _rarity,
                expansion: _expansion,
                ability: _ability,
                attacks: _attacks,
                imageUrl: _imageUrl,
                isComplete: _isComplete,
                color: _currentColor,
                backgroundColor: _backgroundColor,
                quantity: _currentSliderValue,
                date: DateTime(
                  _dueDate.year,
                  _dueDate.month,
                  _dueDate.day,
                  _timeOfDay.hour,
                  _timeOfDay.minute,
                ),
              );
              if (widget.isUpdating) {
                widget.onUpdate(cardItem);
              } else {
                widget.onCreate(cardItem);
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
          buildNameField(),
          buildDateField(context),
          buildTimeField(context),
          const SizedBox(
            height: 10,
          ),
          buildColorPicker(context),
          // Todo: Add slider
          const SizedBox(
            height: 10,
          ),
          buildQuantityField(),
          CardTile(
            item: CardItem(
              id: 'preview',
              cardId: _cardId,
              price: _price,
              name: _name,
              evolutionStage: _evolutionStage,
              evolveFrom: _evolveFrom,
              type: _type,
              hp: _hp,
              weakness: _weakness,
              resistance: _resistance,
              retreatCost: _retreatCost,
              cardNumber: _cardNumber,
              rarity: _rarity,
              expansion: _expansion,
              ability: _ability,
              attacks: _attacks,
              imageUrl: _imageUrl,
              isComplete: _isComplete,
              color: _currentColor,
              backgroundColor: _backgroundColor,
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
  List<String> _cardsNameList(List<CardsList> cardsList) {
    List<String> namesList =
        cardsList.map((e) => '${e.id} :  ${e.name}').toList();

    return namesList;
  }

  Map selectedCard(List<CardsList> cardsList, int cardId) {
    Map card = {};
    cardsList
        .map((e) => {
              if (e.id == cardId)
                {
                  card = {
                    "id": e.id,
                    "price": e.price,
                    "name": e.name,
                    "evolutionStage": e.evolutionStage,
                    "evolveFrom": e.evolveFrom,
                    "type": e.type,
                    "hp": e.hp,
                    "weakness": e.weakness,
                    "resistance": e.resistance,
                    "retreatCost": e.retreatCost,
                    "cardNumber": e.cardNumber,
                    "rarity": e.rarity,
                    "expansion": e.expansion,
                    "ability": e.ability,
                    "attacks": e.attacks,
                    "imageUrl": e.imageUrl,
                  }
                }
            })
        .toList();

    return card;
  }

  Widget buildNameField() {
    return FutureBuilder(
        future: MockAppService().getCardsList(),
        builder:
            (BuildContext context, AsyncSnapshot<List<CardsList>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownSearch<String>(
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: true,
                  items: _cardsNameList(snapshot.data!),
                  selectedItem: _name,
                  onChanged: (selectedItem) {
                    List<String>? selectedItemList = selectedItem?.split(" ");
                    int selectedItemCardId = int.parse(selectedItemList![0]);
                    Map card = selectedCard(snapshot.data!, selectedItemCardId);
                    setState(() {
                      _cardId = card['id'];
                      _price = card['price'];
                      _name = card['name'];
                      _evolutionStage = card['evolutionStage'];
                      _evolveFrom = card['evolveFrom'];
                      _type = card['type'];
                      _hp = card['hp'];
                      _weakness = card['weakness'];
                      _resistance = card['resistance'];
                      _retreatCost = card['retreatCost'];
                      _cardNumber = card['cardNumber'];
                      _rarity = card['rarity'];
                      _expansion = card['expansion'];
                      _ability = card['ability'];
                      _attacks = card['attacks'];
                      _imageUrl = card['imageUrl'];
                      switch (_type) {
                        case 'Water':
                          _backgroundColor = Colors.blue;
                          break;

                        case 'Grass':
                          _backgroundColor = Colors.green;
                          break;

                        case 'Fire':
                          _backgroundColor = Colors.red;
                          break;

                        case 'Lightning':
                          _backgroundColor = Colors.yellow;
                          break;

                        case 'Fighting':
                          _backgroundColor = Colors.brown;
                          break;

                        case 'Darkness':
                          _backgroundColor = Colors.black87;
                          break;

                        case 'Metal':
                          _backgroundColor = Colors.grey;
                          break;

                        case 'Colorless':
                          _backgroundColor = Colors.white70;
                          break;

                        case 'Dragon':
                          _backgroundColor = Colors.amber;
                          break;

                        case 'Psychic':
                          _backgroundColor = Colors.purple;
                          break;
                        default:
                      }
                    });
                  },
                  //show selected item
                ),
              ],
            );
            ;
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

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
                final currentDate = DateTime.now();
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: currentDate,
                  lastDate: DateTime(currentDate.year + 5),
                );
                setState(() {
                  if (selectedDate != null) {
                    _dueDate = selectedDate;
                  }
                });
              },
              child: const Text('Select'),
            ),
          ],
        ),
        Text('${DateFormat('yyyy-MM-dd').format(_dueDate)}'),
      ],
    );
  }

  Widget buildTimeField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Time of Day'),
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
              child: const Text('Select'),
            ),
          ],
        ),
        Text('${_timeOfDay.format(context)}'),
      ],
    );
  }

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

  Widget buildQuantityField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
