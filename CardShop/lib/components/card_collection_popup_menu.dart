import 'package:flutter/material.dart';
import 'package:may10_shop/screen/card_screen.dart';
import 'package:may10_shop/home.dart';


class CardCollectionPopupMenu extends StatelessWidget {
  const CardCollectionPopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.filter_list),
      onSelected: (String result) {
        switch (result) {
          case 'filter1':

            print('filter 1 clicked');

            break;
          case 'filter2':
            print('filter 2 clicked');
            break;
          case 'clearFilters':
            print('Clear filters');
            break;
          default:
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'filter1',
          child: Text('Filter 1'),
        ),
        const PopupMenuItem<String>(
          value: 'filter2',
          child: Text('Filter 2'),
        ),
        const PopupMenuItem<String>(
          value: 'clearFilters',
          child: Text('Clear filters'),
        ),
      ],
    );
  }
}
