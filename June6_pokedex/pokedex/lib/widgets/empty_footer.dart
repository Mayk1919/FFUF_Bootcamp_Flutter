import 'package:flutter/material.dart';
import 'package:pokedex/utilities/global_constants.dart';

class EmptyFooter extends StatelessWidget {
  const EmptyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: kPokemonListPageFooterHeight
    );
  }
}