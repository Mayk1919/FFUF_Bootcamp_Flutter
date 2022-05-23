enum Color {
  RED,
  BLUE,
  GREEN,
  ORANGE,
  LIGHT_BLUE,
  WHITE,
}

enum Brightness {
  DARK,
  LIGHT,
}

class ThemeData {
  final Color accentColor;
  final Color backgroundColor;
  final Color buttonColor;
  final Brightness brightness;

  ThemeData({
    this.accentColor = Color.GREEN,
    this.backgroundColor = Color.BLUE,
    this.buttonColor = Color.ORANGE,
    this.brightness = Brightness.DARK,
  });

  ThemeData copyWith({
    Color? accentColor,
    Color? backgroundColor,
    Color? buttonColor,
    Brightness? brightness,
  }) {
    return ThemeData(
      accentColor: accentColor ?? this.accentColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      buttonColor: buttonColor ?? this.buttonColor,
      brightness: brightness ?? this.brightness,
    );
  }

  @override
  String toString() {
    return 'Accent Color: $accentColor \n'
        'Background Color: $backgroundColor \n'
        'Button Color: $buttonColor \n'
        'Brightness: $brightness';
  }
}

void main() {
  final theme = ThemeData();
  final theme2 = theme.copyWith(backgroundColor: Color.LIGHT_BLUE);
  print(theme2);
}
