import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/providers/products_provider.dart';
import 'package:shop_app/widgets/product_item.dart';

import 'package:shop_app/widgets/products_grid.dart';

enum FilterOptions{
Favorites,
  All,

}

class ProductsOverviewScreen extends StatelessWidget {
   ProductsOverviewScreen({Key? key}) : super(key: key);

   final productsContainer = Provider.of<ProductsProvider>(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text('My Shop'),
    actions: [
      PopupMenuButton(
        onSelected: (FilterOptions selectedValue){
        if(selectedValue == FilterOptions.Favorites){

        }else{

        }
        },
        icon: Icon(Icons.more_vert),
          itemBuilder: (_)=>[
            PopupMenuItem(
                child: Text('Only Favorites'),
              value: FilterOptions.Favorites,
            ),
            PopupMenuItem(
              child: Text('Show all'),
              value: FilterOptions.All,
            ),
          ]
      ),
    ],
  ),
      body: ProductsGrid(),

    );
  }
}

