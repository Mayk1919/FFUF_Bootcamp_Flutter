import 'package:flutter/material.dart';

class ScaffoldWithCustomColor extends StatelessWidget {
  const ScaffoldWithCustomColor({
     this.color,
     this.child,
     this.appBar,
  });

  final Color? color;
  final Widget? child;
  final Widget? appBar;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: color,
        primaryColor: color,
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: child,
      ),
    );
  }
}
