import 'dart:math';
import 'package:april22/data.dart';

class Pokemon {
  final String name;
  final List<String> type;
  final List<String > attacks;
  final List<String> attacksType;
  final List<int> attacksPower;
  final List<String> attacksCategory;
  final int hp;
  final int attack;
  final int defense;
  final int spAttack;
  final int spDefense;

  const Pokemon({
    required this.name,
    required this.type,
    required this.attacks,
    required this.attacksType,
    required this.attacksPower,
    required this.attacksCategory,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.spAttack,
    required this.spDefense,
  });

  @override
  String toString() =>'Your Pokemon overview\nName: $name\nType: $type\nAttacks: $attacks\nHP: $hp\nAttack: $attack\nDefense: $defense\nSp. Attack: $spAttack\nSp. Defense: $spDefense\n';
}



void main() {
  const pokemon1 = Pokemon(
    name: 'Pikachu',
    type: ['Electric'],
    attacks: ['Quick Atack','Thunder Shock','Spark','Slam'],
    attacksType: ['Normal','Electric','Electric','Normal'],
    attacksPower: [40,40,65,80],
    attacksCategory: ['Physical','Special','Physical','Physical'],
    hp: 274,
    attack: 229,
    defense: 196,
    spAttack: 218,
    spDefense: 218,
  );
  const pokemon2 = Pokemon(
    name: 'Bulbasaur',
    type: ['Grass','Poison'],
    attacks: ['Tackle','Vine Whip','Razor Leaf','Seed Bomb'],
    attacksType: ['Normal','Grass','Grass','Grass'],
    attacksPower: [40,45,55,80],
    attacksCategory: ['Physical','Physical','Physical','Physical'],
    hp: 294,
    attack: 216,
    defense: 216,
    spAttack: 251,
    spDefense: 251,
  );

  int pokemon1Hp = pokemon1.hp;
  int pokemon2Hp = pokemon1.hp;


  int typeMultiplier(String attackerAttackType, List opponentElementType ){
    dynamic multiplier = 1;
    opponentElementType.forEach((e) => weaknesses[attackerAttackType][e] != null ? multiplier *= weaknesses[attackerAttackType][e] : multiplier *= 1);


  return multiplier;
  };

  Map attackChosen(List attacks, List attackType, List attackCategory, List attackPower){
    var random = Random();
    int chooseAttack = random.nextInt(attacks.length);

    return {
      'attack': attacks[chooseAttack],
      'attackType': attackType[chooseAttack],
      'attackCategory':attackCategory[chooseAttack],
      'attackPower':attackPower[chooseAttack],
    };
  };



  int computeDamage(Map attackerAttack , int oppenentDefense , int oppponentSpDefense, int multiplier){
    dynamic damage = 0;
    if(attackerAttack['attackType'] == 'Physical'){
      damage = (oppenentDefense) - attackerAttack['attackPower'] * multiplier;
      print('Defense: ${oppenentDefense}');
      print(attackerAttack['attackPower'] * multiplier);
    }
    else{
      damage = (oppenentDefense) - attackerAttack['attackPower'] * multiplier;
    }

    return damage.floor();
  }



  String battle() {
    print('${pokemon1.name} has ${pokemon1.hp}HP');
    print('${pokemon2.name} has ${pokemon2.hp}HP');
    while (pokemon1Hp > 0 && pokemon2Hp > 0) {
      Map pokemon1ChosenAttack = attackChosen(pokemon1.attacks, pokemon1.attacksType, pokemon1.attacksCategory, pokemon1.attacksPower);
      Map pokemon2ChosenAttack = attackChosen(pokemon2.attacks, pokemon2.attacksType, pokemon2.attacksCategory, pokemon2.attacksPower);
      int damage1 = computeDamage(pokemon2ChosenAttack, pokemon1.defense, pokemon1.spDefense, typeMultiplier(pokemon2ChosenAttack['attackType'] , pokemon1.type));
      int damage2 = computeDamage(pokemon1ChosenAttack, pokemon2.defense, pokemon2.spDefense, typeMultiplier(pokemon1ChosenAttack['attackType'] , pokemon2.type));
      pokemon1Hp -= damage1;
      pokemon2Hp -= damage2;
      print('${pokemon1.name} attacks ${pokemon2.name} with ${pokemon1ChosenAttack['attack']}');
      print('${pokemon2.name} took ${damage1}');
      print('${pokemon2.name} has ${pokemon2Hp}HP remaining');
      print('${pokemon2.name} attacks ${pokemon1.name} with ${pokemon2ChosenAttack['attack']}');
      print('${pokemon1.name} took ${damage2}');
      print('${pokemon1.name} has ${pokemon1Hp}HP remaining');
      print('');
    }
    return pokemon1Hp < 0 ? '${pokemon2.name} Wins' : '${pokemon1.name} Wins';
  };
  Map pokemon2ChosenAttack = attackChosen(pokemon2.attacks, pokemon2.attacksType, pokemon2.attacksCategory, pokemon2.attacksPower);
  Map pokemon1ChosenAttack = attackChosen(pokemon1.attacks, pokemon1.attacksType, pokemon1.attacksCategory, pokemon1.attacksPower);
  print(pokemon1);
  print(pokemon2);
  print(battle());
  //print(typeMultiplier('Water', ['Fire','Ground']));
  print(computeDamage(pokemon2ChosenAttack, pokemon1.defense, pokemon1.spDefense, typeMultiplier(pokemon2ChosenAttack['attackType'] , pokemon1.type)));



}
