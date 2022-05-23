import 'package:flutter/material.dart';
import 'package:may18_navigation/main.dart';

class RouteGenerator {
static const String firstPage = '/';
static const String randomPage = '/second';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case firstPage:
        return MaterialPageRoute(builder: (_) => FirstPage());
      case randomPage:
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => SecondPage(data: args,)
          );
        }
        return _errorRoute();
      case '/third':
        return MaterialPageRoute(builder: (_) => ThirdPage());
      default:
        return
          _errorRoute
            (
          );
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('error'),

        ),
        body: Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}