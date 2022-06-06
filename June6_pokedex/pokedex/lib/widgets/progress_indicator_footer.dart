import 'package:flutter/material.dart';
import 'package:pokedex/utilities/global_constants.dart';

class ProgressIndicatorFooter extends StatelessWidget {
  const ProgressIndicatorFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: kProgressIndicatorFooterPadding,
        child: CircularProgressIndicator(
          strokeWidth: kProgressIndicatorStrokeWidth,
        ),
      ),
    );
  }
}
