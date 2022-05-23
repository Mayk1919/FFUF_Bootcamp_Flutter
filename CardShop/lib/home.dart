import 'package:flutter/material.dart';
import 'package:may10_shop/components/components.dart';
import 'package:may10_shop/screen/explore_screen.dart';
import 'package:may10_shop/screen/card_screen.dart';
import 'package:may10_shop/screen/card_shop_screen.dart';
import 'package:provider/provider.dart';

import 'models/tab_manager.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
Widget _popupMenu = Container();

  static List pages = [
    ExploreScreen(),
    CardScreen(),
    const CardShopScreen(),
  ];

  void _cardScreenFilter (String filter){
    setState(() {
      pages[_selectedIndex] = CardScreen(filter: filter,);
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 1){
        _popupMenu = cardsFilterMenu();
      }
      else{
        _popupMenu = Container();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
        builder: (context, tabManager, child)
    {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Card Shop App'),
          centerTitle: true,
          actions: [_popupMenu],
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background/expansion_background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            color: Colors.black.withOpacity(0.6),
            child: pages[tabManager.selectedTab],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: tabManager.selectedTab,
          onTap: (index){
            tabManager.goToTab(index);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: 'Expansions'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                ),
                label: 'Cards'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                ),
                label: 'shop'),
          ],
        ),
      );
    },
    );
  }


  Widget cardsFilterMenu(){
    return PopupMenuButton<String>(

      icon: Icon(Icons.filter_list),
      onSelected: (String result) {
        switch (result) {
          case 'sortNameAsc':
            
            _cardScreenFilter('sortNameAsc');

            break;
          case 'sortNameDsc':
            _cardScreenFilter('sortNameDsc');
            break;
          case 'filterByExpansion':
            print('test');
            break;
          case 'clearFilters':
            _cardScreenFilter('all');
            break;
          default:
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'sortNameAsc',
          child: Text('Sort Name A->Z'),
        ),
        const PopupMenuItem<String>(
          value: 'sortNameDsc',
          child: Text('Sort Name Z->A'),
        ),
         PopupMenuItem<String>(

          value: 'filterByExpansion',
          child: Text('filterByExpansion'),



        ),
        const PopupMenuItem<String>(
          value: 'clearFilters',
          child: Text('Clear filters'),
        ),
      ],
    );
  }
}
