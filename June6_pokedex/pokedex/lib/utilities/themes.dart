import 'package:flutter/material.dart';

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
    textTheme: TextTheme(
      headline1: TextStyle(
          color: textColorWhite, fontWeight: FontWeight.bold, fontSize: 32.0),
      headline2: TextStyle(
          color: textColorBlack, fontWeight: FontWeight.bold, fontSize: 24.0),
      headline3: TextStyle(
          color: textColorWhite, fontWeight: FontWeight.bold, fontSize: 16.0),
      headline4: TextStyle(
          color: textColorWhite, fontWeight: FontWeight.bold, fontSize: 14.0),
      bodyText1: TextStyle(color: textColorBlack),
      bodyText2: TextStyle(color: textColorWhite, fontSize: 18.0),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    ),
    appBarTheme: AppBarTheme(elevation: 0.0),
    backgroundColor: lightModePrimaryColor,
  );

  static ThemeData themeDark = ThemeData(
    brightness: Brightness.dark,
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
      bodyText1: TextStyle(
        color: textColorDarkMode,
      ),
      bodyText2: TextStyle(color: textColorDarkMode, fontSize: 18.0),
    ),
    cardTheme: CardTheme(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
    appBarTheme: AppBarTheme(elevation: 0.0),
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
