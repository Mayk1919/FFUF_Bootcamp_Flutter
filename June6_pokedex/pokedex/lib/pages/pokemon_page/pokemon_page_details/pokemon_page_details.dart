import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/pokemon_evolution_chain/pokemon_evolution_chain.dart';
import 'package:pokedex/models/pokemon_species/pokemon_species.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/about_container/about_container.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/base_stats_container/base_stats_container.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/evolution_chain_container/evolution_chain_container.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/moves_container/moves_container.dart';
import 'package:pokedex/utilities/color_utilities.dart';
import 'package:pokedex/utilities/global_constants.dart';

class PokemonPageDetails extends StatelessWidget {
  const PokemonPageDetails({
    required this.pokemon,
    required this.pokemonColor,
    required this.isLoadingDetails,
    required this.pokemonSpecies,
    required this.pokemonEvolutionChain,
    required this.pokemonEvolutionDetails,
    Key? key,
  }) : super(key: key);

  final Pokemon pokemon;
  final Color pokemonColor;
  final bool isLoadingDetails;
  final PokemonSpecies pokemonSpecies;
  final PokemonEvolutionChain pokemonEvolutionChain;
  final List<Pokemon> pokemonEvolutionDetails;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: kPokemonPageDetailsFlex,
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        padding: kPokemonPageDetailsPadding,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: kPokemonPageDetailsBorderRadius,
        ),
        child: isLoadingDetails
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : DefaultTabController(
                length: kPokemonPageDetailsTabCount,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: darken(pokemonColor),
                      indicatorColor: Theme.of(context).indicatorColor,
                      unselectedLabelColor:
                          Theme.of(context).unselectedWidgetColor,
                      tabs: const<Tab>[
                        Tab(text: 'About'),
                        Tab(text: 'Base Stats'),
                        Tab(text: 'Evolution'),
                        Tab(text: 'Moves'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          AboutContainer(
                            pokemon: pokemon,
                            pokemonColor: pokemonColor,
                            flavorTextEnglish: pokemonSpecies.flavorTextEnglish,
                          ),
                          BaseStatsContainer(
                            pokemon: pokemon,
                            pokemonColor: pokemonColor,
                          ),
                          EvolutionChainContainer(
                            evolutionChain: pokemonEvolutionChain,
                            evolutionChainDetails: pokemonEvolutionDetails,
                          ),
                          MovesContainer(
                            moveList: pokemon.moveList,
                            itemBackgroundColor: pokemonColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
