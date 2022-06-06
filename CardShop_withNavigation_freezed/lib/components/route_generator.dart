import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:may10_shop/home.dart';

import 'package:may10_shop/welcome.dart';
import 'package:may10_shop/models/models.dart';

class RouteGenerator {
  static const String home = '/';
  static const String welcome = '/welcome';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => TabManager()),
              ChangeNotifierProvider(create: (context) => CardManager())
            ],
            child: const Home(),
          );
        });
      case welcome:
        return MaterialPageRoute(builder: (_) => const Welcome());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('error'),
        ),
        body: const Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}
