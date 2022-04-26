import 'dart:math';
import 'package:april25/data.dart';

class Pokemon {
  final String name;
  final int hp;
  final int attack;
  final int defense;
  final int spAttack;
  final int spDefense;

  const Pokemon({
    required this.name,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.spAttack,
    required this.spDefense,
  });

  @override
  String toString() =>
      'Your Pokemon overview\nName: $name\nHP: $hp\nAttack: $attack\nDefense: $defense\nSp. Attack: $spAttack\nSp. Defense: $spDefense\n';
}

class ElectricPokemon extends Pokemon {
  final List<String> type;
  final List<String> attacks;
  final List<String> attacksType;
  final List<int> attacksPower;
  final List<String> attacksCategory;

  const ElectricPokemon({
    required this.type,
    required this.attacks,
    required this.attacksType,
    required this.attacksPower,
    required this.attacksCategory,
    required String name,
    required int hp,
    required int attack,
    required int defense,
    required int spAttack,
    required int spDefense,
  }) : super(
          name: name,
          hp: hp,
          attack: attack,
          defense: defense,
          spAttack: spAttack,
          spDefense: spDefense,
        );

  @override
  String toString() =>
      'Your Pokemon overview\nName: $name\nType: $type\nAttacks: $attacks\nHP: $hp\nAttack: $attack\nDefense: $defense\nSp. Attack: $spAttack\nSp. Defense: $spDefense\n';
}

class GrassPokemon extends Pokemon {
  final List<String> type;
  final List<String> attacks;
  final List<String> attacksType;
  final List<int> attacksPower;
  final List<String> attacksCategory;

  const GrassPokemon({
    required this.type,
    required this.attacks,
    required this.attacksType,
    required this.attacksPower,
    required this.attacksCategory,
    required String name,
    required int hp,
    required int attack,
    required int defense,
    required int spAttack,
    required int spDefense,
  }) : super(
    name: name,
    hp: hp,
    attack: attack,
    defense: defense,
    spAttack: spAttack,
    spDefense: spDefense,
  );

  @override
  String toString() =>
      'Your Pokemon overview\nName: $name\nType: $type\nAttacks: $attacks\nHP: $hp\nAttack: $attack\nDefense: $defense\nSp. Attack: $spAttack\nSp. Defense: $spDefense\n';
}

class WaterPokemon extends Pokemon {
  final List<String> type;
  final List<String> attacks;
  final List<String> attacksType;
  final List<int> attacksPower;
  final List<String> attacksCategory;

  const WaterPokemon({
    required this.type,
    required this.attacks,
    required this.attacksType,
    required this.attacksPower,
    required this.attacksCategory,
    required String name,
    required int hp,
    required int attack,
    required int defense,
    required int spAttack,
    required int spDefense,
  }) : super(
    name: name,
    hp: hp,
    attack: attack,
    defense: defense,
    spAttack: spAttack,
    spDefense: spDefense,
  );

  @override
  String toString() =>
      'Your Pokemon overview\nName: $name\nType: $type\nAttacks: $attacks\nHP: $hp\nAttack: $attack\nDefense: $defense\nSp. Attack: $spAttack\nSp. Defense: $spDefense\n';
}

class FirePokemon extends Pokemon {
  final List<String> type;
  final List<String> attacks;
  final List<String> attacksType;
  final List<int> attacksPower;
  final List<String> attacksCategory;

  const FirePokemon({
    required this.type,
    required this.attacks,
    required this.attacksType,
    required this.attacksPower,
    required this.attacksCategory,
    required String name,
    required int hp,
    required int attack,
    required int defense,
    required int spAttack,
    required int spDefense,
  }) : super(
    name: name,
    hp: hp,
    attack: attack,
    defense: defense,
    spAttack: spAttack,
    spDefense: spDefense,
  );

  @override
  String toString() =>
      'Your Pokemon overview\nName: $name\nType: $type\nAttacks: $attacks\nHP: $hp\nAttack: $attack\nDefense: $defense\nSp. Attack: $spAttack\nSp. Defense: $spDefense\n';
}

void main() {
  const pokemon1 = ElectricPokemon(
    name: 'Pikachu',
    type: ['Electric'],
    attacks: ['Quick Atack', 'Thunder Shock', 'Spark', 'Slam'],
    attacksType: ['Normal', 'Electric', 'Electric', 'Normal'],
    attacksPower: [40, 40, 65, 80],
    attacksCategory: ['Physical', 'Special', 'Physical', 'Physical'],
    hp: 274,
    attack: 229,
    defense: 196,
    spAttack: 218,
    spDefense: 218,
  );
  const pokemon2 = GrassPokemon(
    name: 'Bulbasaur',
    type: ['Grass', 'Poison'],
    attacks: ['Tackle', 'Vine Whip', 'Razor Leaf', 'Seed Bomb'],
    attacksType: ['Normal', 'Grass', 'Grass', 'Grass'],
    attacksPower: [40, 45, 55, 80],
    attacksCategory: ['Physical', 'Physical', 'Physical', 'Physical'],
    hp: 294,
    attack: 216,
    defense: 216,
    spAttack: 251,
    spDefense: 251,
  );

  int pokemon1Hp = pokemon1.hp;
  int pokemon2Hp = pokemon2.hp;

  double typeMultiplier(String attackerAttackType, List opponentElementType) {
    dynamic multiplier = 1.0;
    opponentElementType.forEach((e) => weaknesses[attackerAttackType][e] != null
        ? multiplier *= weaknesses[attackerAttackType][e]
        : multiplier *= 1.0);

    return multiplier;
  }

  ;

  Map attackChosen(
      List attacks, List attackType, List attackCategory, List attackPower) {
    var random = Random();
    int chooseAttack = random.nextInt(attacks.length);

    return {
      'attack': attacks[chooseAttack],
      'attackType': attackType[chooseAttack],
      'attackCategory': attackCategory[chooseAttack],
      'attackPower': attackPower[chooseAttack],
    };
  }

  ;

  int computeDamage(
      Map attackerAttack,
      int oppenentDefense,
      int oppponentSpDefense,
      double multiplier,
      int attack,
      int spAttack,
      ) {
    dynamic damage = 0;
    if (attackerAttack['attackType'] == 'Physical') {
      damage = (attackerAttack['attackPower'] * multiplier) + attack - (oppenentDefense);
      if (damage < 0) {
        damage = 0;
      }
      // print('defense: ${oppenentDefense}');
      // print('attack: ${attackerAttack['attackPower']}');
      // print('multiplier ${multiplier}');
      // print('attack: ${attack}');
      // print('damage: ${damage}');
      // print('');
    } else {
      damage = (attackerAttack['attackPower'] * multiplier) +
          spAttack -
          (oppponentSpDefense);
      if (damage < 0) {
        damage = 0;
      }
      // print('defense: ${oppenentDefense}');
      // print('attack: ${attackerAttack['attackPower']}');
      // print('multiplier ${multiplier}');
      // print('attack: ${spAttack}');
      // print('damege: ${damage}');
      // print('');
    }

    return damage.floor();
  }

  String battle() {
    print('${pokemon1.name} has ${pokemon1.hp}HP');
    print('${pokemon2.name} has ${pokemon2.hp}HP');
    print('');
    while (pokemon1Hp > 0 && pokemon2Hp > 0) {
      Map pokemon1ChosenAttack = attackChosen(
          pokemon1.attacks,
          pokemon1.attacksType,
          pokemon1.attacksCategory,
          pokemon1.attacksPower);
      Map pokemon2ChosenAttack = attackChosen(
          pokemon2.attacks,
          pokemon2.attacksType,
          pokemon2.attacksCategory,
          pokemon2.attacksPower);
      int damage1 = computeDamage(
          pokemon2ChosenAttack,
          pokemon1.defense,
          pokemon1.spDefense,
          typeMultiplier(pokemon2ChosenAttack['attackType'], pokemon1.type),
          pokemon2.attack,
          pokemon2.spAttack);
      int damage2 = computeDamage(
          pokemon1ChosenAttack,
          pokemon2.defense,
          pokemon2.spDefense,
          typeMultiplier(pokemon1ChosenAttack['attackType'], pokemon2.type),
          pokemon1.attack,
          pokemon1.spAttack);
      pokemon1Hp -= damage1;
      pokemon2Hp -= damage2;
      print(
          '${pokemon1.name} attacks ${pokemon2.name} with ${pokemon1ChosenAttack['attack']}');
      print('${pokemon2.name} took ${damage2}');
      print('${pokemon2.name} has ${pokemon2Hp}HP remaining');
      print(
          '${pokemon2.name} attacks ${pokemon1.name} with ${pokemon2ChosenAttack['attack']}');
      print('${pokemon1.name} took ${damage1}');
      print('${pokemon1.name} has ${pokemon1Hp}HP remaining');
      print('');
    }
    return pokemon1Hp < 0 ? '${pokemon2.name} Wins' : '${pokemon1.name} Wins';
  }

  ;

  print(pokemon1);
  print(pokemon2);
  print(battle());

}
