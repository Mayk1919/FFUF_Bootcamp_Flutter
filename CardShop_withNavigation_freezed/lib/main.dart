import 'package:flutter/material.dart';
import 'components/route_generator.dart';

void main() {
  runApp(const CardShopApp());
}

class CardShopApp extends StatelessWidget {
  const CardShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Card Shop App',
      initialRoute: '/welcome',
      onGenerateRoute: RouteGenerator.generateRoute,

    );
  }
}
