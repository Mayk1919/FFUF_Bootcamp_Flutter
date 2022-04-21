class Pokemon{
  final String name;
  final String type;
  final List<String> element;
  final String size;
  final String weight;
  final String sound;
  final String attackAbility;

   const Pokemon({
    required this.name,
    required this.type,
    required this.element,
    required this.size,
    required this.weight,
    required this.sound,
    required this.attackAbility,
});

  @override
  String toString() =>
      'Pokemon name: $name, \ntype: $type, \nelement: $element, \nsize:$size, \nweight: $weight';

  String cry() => 'Produces $sound sound';

  String attack() => '$name can make $attackAbility attack';

}

void main(){
  const List pokemonList = [
    Pokemon(
    name: 'Charmander',
      type: 'Lizard Pokémon',
      element: ['Fire'],
      size: '0.6 m',
      weight: '8.5 kg',
      sound: 'char',
      attackAbility: 'Ember',
  ),
    Pokemon(
      name: 'Bulbasaur',
      type: 'Seed Pokémon',
      element: ['Grass','Poison'],
      size: '0.7 m',
      weight: '6.9 kg',
      sound: 'bulba-bulbasaur',
      attackAbility: 'Razor Leaf',
    ),
    Pokemon(
      name: 'Squirtle',
      type: 'Tiny Turtle Pokémon',
      element: ['Water'],
      size: '0.5 m',
      weight: '9.0  kg',
      sound: 'squirtle squirtle',
      attackAbility: 'Water Gun',
    ),
    Pokemon(
      name: 'Pidgey',
      type: 'Tiny Bird Pokémon',
      element: ['Normal','Flying'],
      size: '0.3 m',
      weight: '1.8  kg',
      sound: 'pidgeeey',
      attackAbility: 'Wing Attack',
    ),
    Pokemon(
      name: 'Jigglypuff',
      type: 'Balloon Pokémon',
      element: ['Normal','Fairy'],
      size: '0.5 m',
      weight: '5.5  kg',
      sound: 'jigly',
      attackAbility: 'Sing',
    ),
    Pokemon(
      name: 'Sandshrew',
      type: 'Mouse  Pokémon',
      element: ['Ground'],
      size: '0.6 m',
      weight: '12  kg',
      sound: 'shrew',
      attackAbility: 'Slash',
    ),
    Pokemon(
      name: 'Machop',
      type: 'Superpower   Pokémon',
      element: ['Ground'],
      size: '0.8 m',
      weight: '19.5  kg',
      sound: 'maaachop',
      attackAbility: 'Low Kick',
    ),
    Pokemon(
      name: 'Machop',
      type: 'Superpower   Pokémon',
      element: ['Ground'],
      size: '0.8 m',
      weight: '19.5  kg',
      sound: 'maaachop',
      attackAbility: 'Low Kick',
    ),
    Pokemon(
      name: 'Geodude',
      type: 'Rock Pokémon',
      element: ['Ground','Rock'],
      size: '0.4 m',
      weight: '20  kg',
      sound: 'geodude',
      attackAbility: 'Rock Throw',
    ),
    Pokemon(
      name: 'Geodude',
      type: 'Rock Pokémon',
      element: ['Ground','Rock'],
      size: '0.4 m',
      weight: '20  kg',
      sound: 'geodude',
      attackAbility: 'Rock Throw',
    ),
    Pokemon(
      name: 'Magnemite',
      type: 'Magnet Pokémon',
      element: ['Electric','Steel'],
      size: '0.3 m',
      weight: '6.0  kg',
      sound: 'magnemite',
      attackAbility: 'Spark',
    ),
    Pokemon(
      name: 'Gastly',
      type: 'Gas Pokémon',
      element: ['Ghost','Poison'],
      size: '1.3 m',
      weight: '0.1  kg',
      sound: 'Gaaastly',
      attackAbility: 'Shadow Ball',
    ),
    Pokemon(
      name: 'Mr. Mime',
      type: 'Barrier Pokémon',
      element: ['Psychic','Fairy'],
      size: '1.3 m',
      weight: '54.5  kg',
      sound: 'Mime',
      attackAbility: 'Barrier',
    ),
    Pokemon(
      name: 'Lapras',
      type: 'Transport Pokémon',
      element: ['Water','Ice'],
      size: '2.5 m',
      weight: '220  kg',
      sound: 'Laprasss',
      attackAbility: 'Ice Beam',
    ),
  ];


pokemonList.forEach((pokemon) => {
  print(pokemon),
  print(pokemon.cry()),
  print(pokemon.attack()),
  print('')
});

}