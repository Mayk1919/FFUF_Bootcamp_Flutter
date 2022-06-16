import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/pokemon_evolution_chain/pokemon_evolution_chain.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/evolution_chain_container/evolution_card.dart';
import 'package:pokedex/utilities/global_constants.dart';

class EvolutionChainContainer extends StatelessWidget {
  const EvolutionChainContainer({
    required this.evolutionChain,
    required this.evolutionChainDetails,
    Key? key,
  }) : super(key: key);

  final PokemonEvolutionChain evolutionChain;
  final List<Pokemon> evolutionChainDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kEvolutionChainContainerPadding,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: kEvolutionChainGridDimension,
        children: buildGridChildren(evolutionChain),
      ),
    );
  }

  List<Widget> buildGridChildren(PokemonEvolutionChain evolutionChain) {
    final hasStage2Evolutions = evolutionChain.hasStage2Evolutions;
    final hasStage3Evolutions = evolutionChain.hasStage3Evolutions;
    final stage2EvolutionCount =
    hasStage2Evolutions ? evolutionChain.stage2Evolutions.length : 0;
    final stage3EvolutionCount =
    hasStage3Evolutions ? evolutionChain.stage3Evolutions.length : 0;
    var evolutionChainDetailsIndex = 0;

    final basePokemon = evolutionChainDetails[evolutionChainDetailsIndex++];

    final stage2Evolutions = <Pokemon>[];
    for (var i = 0; i < stage2EvolutionCount; ++i) {
      stage2Evolutions.add(evolutionChainDetails[evolutionChainDetailsIndex++]);
    }

    final stage3Evolutions = <Pokemon>[];
    for (var i = 0; i < stage3EvolutionCount; ++i) {
      stage3Evolutions.add(evolutionChainDetails[evolutionChainDetailsIndex++]);
    }

    final children = <Widget>[];

    // I'M SORRY.
    // Displays the evolution chain in a 3x3 grid.
    // Handles ALL cases of branched evolutions.

    final isDisplayingEvolutionOfEevee = !hasStage3Evolutions &&
        hasStage2Evolutions &&
        stage2Evolutions.length == 8;

    // ROW 1
    // Column 1
    if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[0],
        isArrowVertical: true,
        isArrowOnBottom: true,
        arrowWidget: rotateIcon45Degrees(Icons.arrow_back),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    // Column 2
    if (hasStage2Evolutions &&
        stage2Evolutions.length == 2 &&
        hasStage3Evolutions) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[0],
        isArrowOnLeft: true,
        arrowWidget: rotateIconMinus45Degrees(Icons.arrow_forward),
      ));
    } else if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[1],
        isArrowVertical: true,
        isArrowOnBottom: true,
        arrowWidget: const Icon(Icons.arrow_upward),
      ));
    } else if (hasStage2Evolutions && stage2Evolutions.length == 3) {
      children.add(const EvolutionCard(
        isArrowOnLeft: true,
        arrowWidget: Icon(
          Icons.arrow_forward,
        ),
      ));
    } else if (!hasStage3Evolutions &&
        hasStage2Evolutions &&
        stage2Evolutions.length == 2) {
      children.add(const EvolutionCard(
        arrowWidget: Icon(
          Icons.arrow_forward,
        ),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    // Column 3
    if (hasStage3Evolutions &&
        stage3Evolutions.length == 2 &&
        stage2Evolutions.length == 1) {
      children.add(EvolutionCard(
        pokemon: stage3Evolutions[0],
        isArrowOnLeft: true,
        arrowWidget: rotateIconMinus45Degrees(Icons.arrow_forward),
      ));
    } else if (hasStage3Evolutions &&
        stage3Evolutions.length == 2 &&
        stage2Evolutions.length == 2) {
      children.add(EvolutionCard(
        pokemon: stage3Evolutions[0],
        isArrowOnLeft: true,
        arrowWidget: const Icon(Icons.arrow_forward),
      ));
    } else if (hasStage2Evolutions && stage2Evolutions.length == 3) {
      children.add(EvolutionCard(pokemon: stage2Evolutions[0]));
    } else if (hasStage2Evolutions &&
        !hasStage3Evolutions &&
        stage2Evolutions.length == 2) {
      children.add(EvolutionCard(pokemon: stage2Evolutions[0]));
    } else if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[2],
        isArrowVertical: true,
        isArrowOnBottom: true,
        arrowWidget: rotateIconMinus45Degrees(Icons.arrow_forward),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    // ROW 2
    // Column 1
    if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[3],
        isArrowOnLeft: false,
        arrowWidget: const Icon(Icons.arrow_back),
      ));
    } else if (hasStage2Evolutions &&
        stage2Evolutions.length == 2 &&
        stage3Evolutions.length == 2) {
      children.add(EvolutionCard(
        pokemon: basePokemon,
      ));
    } else if (hasStage2Evolutions && !hasStage3Evolutions) {
      children.add(EvolutionCard(
        pokemon: basePokemon,
      ));
    } else if (hasStage2Evolutions && hasStage3Evolutions) {
      children.add(EvolutionCard(
        pokemon: basePokemon,
        isArrowOnLeft: false,
        arrowWidget: const Icon(Icons.arrow_forward),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    // Column 2
    if (hasStage2Evolutions &&
        stage2Evolutions.length == 1 &&
        hasStage3Evolutions &&
        stage3Evolutions.length == 2) {
      children.add(EvolutionCard(pokemon: stage2Evolutions[0]));
    } else if (hasStage2Evolutions &&
        stage2Evolutions.length == 1 &&
        hasStage3Evolutions) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[0],
        isArrowOnLeft: false,
        arrowWidget: const Icon(Icons.arrow_forward),
      ));
    } else if (!hasStage2Evolutions && !hasStage3Evolutions) {
      children.add(EvolutionCard(pokemon: basePokemon));
    } else if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: basePokemon,
      ));
    } else if (hasStage2Evolutions && stage2Evolutions.length == 3) {
      children.add(const EvolutionCard(
        isArrowOnLeft: true,
        arrowWidget: Icon(
          Icons.arrow_forward,
        ),
      ));
    } else if (!hasStage3Evolutions &&
        hasStage2Evolutions &&
        stage2Evolutions.length == 1) {
      children.add(const EvolutionCard(
        isArrowOnLeft: true,
        arrowWidget: Icon(
          Icons.arrow_forward,
        ),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    // Column 3
    if (hasStage3Evolutions && stage3Evolutions.length == 1) {
      children.add(EvolutionCard(
        pokemon: stage3Evolutions[0],
      ));
      // } else if (!hasStage2Evolutions && !hasStage3Evolutions) {
    } else if (hasStage2Evolutions && stage2Evolutions.length == 3) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[1],
      ));
    } else if (hasStage2Evolutions &&
        !hasStage3Evolutions &&
        stage2Evolutions.length == 1) {
      children.add(EvolutionCard(pokemon: stage2Evolutions[0]));
    } else if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[4],
        isArrowOnLeft: true,
        arrowWidget: const Icon(Icons.arrow_forward),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    // ROW 3
    // Column 1
    if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[5],
        isArrowVertical: true,
        isArrowOnBottom: false,
        arrowWidget: rotateIconMinus45Degrees(Icons.arrow_back),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    // Column 2
    if (hasStage3Evolutions && stage2Evolutions.length == 2) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[1],
        isArrowOnLeft: true,
        arrowWidget: rotateIcon45Degrees(Icons.arrow_forward),
      ));
    } else if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[6],
        isArrowVertical: true,
        isArrowOnBottom: false,
        arrowWidget: const Icon(Icons.arrow_downward),
      ));
    } else if (hasStage2Evolutions && stage2Evolutions.length == 3) {
      children.add(const EvolutionCard(
        isArrowOnLeft: true,
        arrowWidget: Icon(
          Icons.arrow_forward,
        ),
      ));
    } else if (!hasStage3Evolutions &&
        hasStage2Evolutions &&
        stage2Evolutions.length == 2) {
      children.add(const EvolutionCard(
        arrowWidget: Icon(
          Icons.arrow_forward,
        ),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    // Column 3
    if (hasStage3Evolutions &&
        stage3Evolutions.length == 2 &&
        stage2Evolutions.length == 1) {
      children.add(EvolutionCard(
        pokemon: stage3Evolutions[1],
        isArrowOnLeft: true,
        arrowWidget: rotateIcon45Degrees(Icons.arrow_forward),
      ));
    } else if (hasStage3Evolutions &&
        stage3Evolutions.length == 2 &&
        stage2Evolutions.length == 2) {
      children.add(EvolutionCard(
        pokemon: stage3Evolutions[1],
        isArrowOnLeft: true,
        arrowWidget: const Icon(Icons.arrow_forward),
      ));
    } else if (hasStage2Evolutions && stage2Evolutions.length == 3) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[2],
      ));
    } else if (hasStage2Evolutions &&
        !hasStage3Evolutions &&
        stage2Evolutions.length == 2) {
      children.add(EvolutionCard(pokemon: stage2Evolutions[1]));
    } else if (isDisplayingEvolutionOfEevee) {
      children.add(EvolutionCard(
        pokemon: stage2Evolutions[7],
        isArrowVertical: true,
        isArrowOnBottom: false,
        arrowWidget: rotateIcon45Degrees(Icons.arrow_forward),
      ));
    } else {
      children.add(const EvolutionCard());
    }

    return children;
  }

  Transform rotateIconMinus45Degrees(IconData iconData) {
    return Transform.rotate(
      angle: -math.pi / 4,
      child: Icon(iconData),
    );
  }

  Transform rotateIcon45Degrees(IconData iconData) {
    return Transform.rotate(
      angle: math.pi / 4,
      child: Icon(iconData),
    );
  }
}
