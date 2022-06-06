import 'package:flutter/material.dart';

class ToggleIconButton extends StatelessWidget {
  const ToggleIconButton(
      {Key? key,
      required this.iconIfCondition,
      required this.otherIcon,
      required this.condition,
      required this.onPress})
      : super(key: key);
  final Icon iconIfCondition;
  final Icon otherIcon;
  final bool condition;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return condition
        ? IconButton(onPressed: onPress, icon: iconIfCondition)
        : IconButton(onPressed: onPress, icon: otherIcon);
  }
}
