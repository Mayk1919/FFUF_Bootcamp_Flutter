import 'package:flutter/material.dart';
import 'package:shop_app/providers/products_provider.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider(
       create: (BuildContext context) =>ProductsProvider() ,
       child: MaterialApp(
         title: 'MyShop',
         theme: ThemeData(
           colorScheme: ColorScheme.fromSwatch(
               primarySwatch: Colors.purple).copyWith(
               secondary: Colors.deepOrange),

         ),
         home: ProductsOverviewScreen(),
         routes: {
          ProductDetailScreen.routeName: (context)=> ProductDetailScreen(),
         },
       ),
     );
   }
 }

