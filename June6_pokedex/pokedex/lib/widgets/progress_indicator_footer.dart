import 'package:flutter/material.dart';
import 'package:pokedex/utilities/global_constants.dart';

/// A loading progress indicator at the bottom of an infinite scroll list.
class ProgressIndicatorFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: kProgressIndicatorFooterPadding,
        child: SizedBox(
          child: CircularProgressIndicator(
              strokeWidth: kProgressIndicatorStrokeWidth),
        ),
      ),
    );
  }
}
