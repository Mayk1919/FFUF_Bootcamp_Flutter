import 'package:flutter/material.dart';

class PokemonColorPicker {
  static Color getColor(String type) {
    switch (type) {
      case 'normal':
        return const Color(0xffA8A77A);
      case 'fire':
        return const Color(0xffF5AC78);
      case 'water':
        return const Color(0xff9DB7F5);
      case 'electric':
        return const Color(0xffF7D02C);
      case 'grass':
        return const Color(0xffA7DB8D);
      case 'ice':
        return const Color(0xff96D9D6);
      case 'fighting':
        return const Color(0xffC22E28);
      case 'poison':
        return const Color(0xffA33EA1);
      case 'ground':
        return const Color(0xffE2BF65);
      case 'flying':
        return const Color(0xffA98FF3);
      case 'psychic':
        return const Color(0xffF95587);
      case 'bug':
        return const Color(0xffA6B91A);
      case 'rock':
        return const Color(0xffB6A136);
      case 'ghost':
        return const Color(0xff735797);
      case 'dragon':
        return const Color(0xff6F35FC);
      case 'dark':
        return const Color(0xff705746);
      case 'steel':
        return const Color(0xffB7B7CE);
      case 'fairy':
        return const Color(0xffD685AD);
      default:
        return const Color(0xffffffff);
    }
  }
}
