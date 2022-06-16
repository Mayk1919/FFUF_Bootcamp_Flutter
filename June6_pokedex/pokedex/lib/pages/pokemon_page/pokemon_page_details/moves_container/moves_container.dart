import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/moves/pokemon_move.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/moves_container/moves_container_item.dart';
import 'package:pokedex/utilities/global_constants.dart';
import 'package:pokedex/utilities/string_extension.dart';

class MovesContainer extends StatelessWidget {
  const MovesContainer({
    required this.moveList,
    required this.itemBackgroundColor,
    Key? key,
  }) : super(key: key);

  final List<PokemonMove> moveList;
  final Color itemBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: kMovesContainerPadding,
      child: Wrap(
        spacing: kMovesContainerWrapSpacing,
        runSpacing: kMovesContainerWrapRunSpacing,
        children: moveList
            .map((move) => MoveContainerItem(
                  moveName: formatPokemonMoveName(move.moveInfo.name),
                  backgroundColor: itemBackgroundColor,
                ))
            .toList(),
      ),
    );
  }
}
