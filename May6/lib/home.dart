import 'package:flutter/material.dart';
import 'package:food_app/screens/explore_screen.dart';
import 'package:food_app/screens/recipes_screen.dart';
import 'package:food_app/screens/grocery_screen.dart';
import 'package:food_app/models/models.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List pages = [
    ExploreScreen(),
    RecipeScreen(),
    const GroceryScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Wraps all the widgets inside Consumer. When TabManager changes, the widgets below it will rebuild

    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('FoodApp'),
            centerTitle: true,
          ),
          // Todo: Replace body
          // Display the correct page widget, based on the current tab index
          body: pages[tabManager.selectedTab],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            // Sets the current index of BottomNavigationBar
            currentIndex: tabManager.selectedTab,
            onTap: (index) {
              // Calls manager.goToTab() when the user taps a different tab,
              // to notify other widgets that the index changed.
              tabManager.goToTab(index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore,
                  ),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.book,
                  ),
                  label: 'Recipes'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                  ),
                  label: 'To Buy'),
            ],
          ),
        );
      },
    );
  }
}
