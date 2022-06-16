import 'package:flutter/material.dart';

class ToggleIconButton extends StatelessWidget {
  const ToggleIconButton({
    required this.iconIfCondition,
    required this.otherIcon,
    required this.condition,
    required this.onPress,
  });

  final Icon iconIfCondition;
  final Icon otherIcon;
  final bool condition;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return condition
        ? IconButton(icon: iconIfCondition, onPressed: onPress)
        : IconButton(icon: otherIcon, onPressed: onPress);
  }
}
