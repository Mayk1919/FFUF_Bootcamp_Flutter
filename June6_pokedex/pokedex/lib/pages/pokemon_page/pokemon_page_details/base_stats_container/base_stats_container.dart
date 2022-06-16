import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/base_stats_container/models/base_stat.dart';
import 'package:pokedex/utilities/color_utilities.dart';

class BaseStatsContainer extends StatelessWidget {
  const BaseStatsContainer({
    required this.pokemon,
    required this.pokemonColor,
    Key? key,
  }) : super(key: key);

  final Pokemon pokemon;
  final Color pokemonColor;

  List<charts.Series<BaseStat, String>> getData({String? barColor}) {
    final data = [
      BaseStat('HP', pokemon.hpBaseStat),
      BaseStat('Attack', pokemon.attackBaseStat),
      BaseStat('Defense', pokemon.defenseBaseStat),
      BaseStat('Sp-Atk', pokemon.specialAttackBaseStat),
      BaseStat('Sp-Def', pokemon.specialDefenseBaseStat),
      BaseStat('Speed', pokemon.speedBaseStat),
    ];

    return [
      charts.Series<BaseStat, String>(
        id: 'Base Stats',
        domainFn: (baseStat, _) => baseStat.statName,
        measureFn: (baseStat, _) => baseStat.statValue,
        data: data,
        labelAccessorFn: (baseStat, _) => '${baseStat.statValue}',
        // fillColorFn: (BaseStat baseStat, _) => charts.Color.white,
        // insideLabelStyleAccessorFn: (BaseStat baseStat, _) =>
        // charts.TextStyleSpec(fontSize: 64),
        outsideLabelStyleAccessorFn: (baseStat, _) =>
            const charts.TextStyleSpec(fontSize: 64),
        colorFn: (baseStat, _) => charts.Color.fromHex(code: barColor!),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final color =
        brightness == Brightness.dark ? darken(pokemonColor) : pokemonColor;
    final barColor =
        '#${color.toString().replaceAll("Color(", "").replaceAll(")", "").replaceAll("0xff", "")}';
    return charts.BarChart(
      getData(barColor: barColor),
      vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      primaryMeasureAxis:
          const charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
      // Hide domain axis.
      domainAxis: const charts.OrdinalAxisSpec(
        showAxisLine: false,
      ),
    );
  }
}
