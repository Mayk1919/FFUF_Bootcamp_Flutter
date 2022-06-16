import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/types/pokemon_type.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_header/widgets/pokemon_type_name.dart';
import 'package:pokedex/utilities/global_constants.dart';

class PokemonTypeList extends StatelessWidget {
  const PokemonTypeList({
    required this.typeList,
    Key? key,
  }) : super(key: key);

  final List<PokemonType> typeList;

  @override
  Widget build(BuildContext context) {
    if (typeList.length > 1) {
      // Pokemon has 2 types
      return Padding(
        padding: kPokemonPageHeaderTypeListTopPadding,
        child: Row(
          children: [
            PokemonTypeName(
              name: typeList[0].name,
              mainTypeName: typeList[0].name,
            ),
            PokemonTypeName(
              name: typeList[1].name,
              mainTypeName: typeList[0].name,
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: kPokemonPageHeaderTypeListTopPadding,
        child: PokemonTypeName(
          name: typeList[0].name,
          mainTypeName: typeList[0].name,
        ),
      );
    }
  }
}
