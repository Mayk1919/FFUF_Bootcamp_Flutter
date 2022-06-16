import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class PokedexTheme {
  static const Color lightModePrimaryColor = Colors.white;
  static const Color darkModePrimaryColor = Color.fromARGB(255, 77, 72, 72);

  static const Color textColorWhite = Colors.white;
  static const Color textColorBlack = Colors.black;
  static const Color textColorDarkMode = Colors.black38;
  static const Color unselectedColor = Colors.grey;
  static const Color indicatorColor = Colors.transparent;

  static ThemeData themeRegular = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightModePrimaryColor,
    unselectedWidgetColor: unselectedColor,
    indicatorColor: indicatorColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: textColorWhite,
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
      ),
      headline2: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
      headline3: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      headline4: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 18.0,
        color: textColorWhite,
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
    ),
    backgroundColor: lightModePrimaryColor,
  );

  static ThemeData themeDark = ThemeData(
    brightness: Brightness.dark,
    // primaryColor: darkModePrimaryColor,
    unselectedWidgetColor: unselectedColor,
    indicatorColor: indicatorColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: textColorDarkMode,
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
      ),
      headline2: TextStyle(
        color: textColorWhite,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
      headline3: TextStyle(
        color: textColorDarkMode,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      headline4: TextStyle(
        color: textColorDarkMode,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
      bodyText1: TextStyle(color: textColorDarkMode),
      bodyText2: TextStyle(
        fontSize: 18.0,
        color: textColorDarkMode,
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
    ),
    backgroundColor: darkModePrimaryColor,
  );

  static Brightness getBrightness(BuildContext context) =>
      Theme.of(context).brightness;

  static TextStyle moveContainerItemText(BuildContext context) {
    final brightness = getBrightness(context);
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        color: brightness == Brightness.light
            ? Colors.white
            : PokedexTheme.textColorDarkMode);
  }

  static TextStyle evolutionCardText(BuildContext context) {
    final brightness = getBrightness(context);
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 12.0,
        color: brightness == Brightness.light ? Colors.black : Colors.grey);
  }
}
