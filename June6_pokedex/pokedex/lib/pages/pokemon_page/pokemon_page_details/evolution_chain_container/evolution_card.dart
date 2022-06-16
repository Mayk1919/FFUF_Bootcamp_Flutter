import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/utilities/global_constants.dart';
import 'package:pokedex/utilities/string_extension.dart';
import 'package:pokedex/utilities/themes.dart';

class EvolutionCard extends StatelessWidget {
  const EvolutionCard({
    Key? key,
    this.pokemon,
    this.arrowWidget,
    this.isArrowOnLeft,
    this.isArrowOnBottom,
    this.isArrowVertical = false,
  }) : super(key: key);

  final Pokemon? pokemon;
  final Widget? arrowWidget;
  final bool? isArrowOnLeft;
  final bool? isArrowOnBottom;
  final bool isArrowVertical;

  @override
  Widget build(BuildContext context) {
    if (pokemon != null) {
      return Container(
        padding: kEvolutionCardPadding,
        child: Row(
          children: [
            if (isArrowOnLeft != null && isArrowOnLeft!)
              Expanded(child: arrowWidget!),
            Expanded(
              flex: kEvolutionColumnDetailsFlex,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (isArrowVertical && !isArrowOnBottom!)
                    Expanded(child: arrowWidget!),
                  Expanded(
                    flex: kEvolutionColumnDetailsFlex,
                    child: Container(
                      width: kEvolutionColumnDetailsWidth,
                      height: kEvolutionColumnDetailsHeight,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(pokemon!.imageUrl),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '#${formatPokemonId(pokemon!.id)}',
                      style: PokedexTheme.evolutionCardText(context),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      pokemon!.name.inCaps,
                      style: PokedexTheme.evolutionCardText(context),
                    ),
                  ),
                  if (isArrowVertical && isArrowOnBottom!)
                    Expanded(child: arrowWidget!),
                ],
              ),
            ),
            if (isArrowOnLeft != null && !isArrowOnLeft!)
              Expanded(child: arrowWidget!)
            else
              Expanded(child: Container()),
          ],
        ),
      );
    } else if (arrowWidget != null) {
      return Container(
        padding: kEvolutionArrowPadding,
        child: Center(child: arrowWidget),
      );
    } else {
      return Container(
        padding: kEvolutionCardEmptyPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const<Text>[
            Text(''),
            Text(''),
          ],
        ),
      );
    }
  }
}
