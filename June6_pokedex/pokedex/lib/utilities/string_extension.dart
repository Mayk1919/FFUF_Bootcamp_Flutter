extension CapExtension on String {
  String get inCaps => '${this[0].toUpperCase()}';

  String get inSmallCaps => '${this[0].toLowerCase()}${substring(1)}';

  String get alInCaps => toUpperCase();

  String get capitalizeFirstOfEach =>
      split(' ').map((str) => str.inCaps).join(' ');
}

String formatPokemonId(int id) {
  const idWIdth = 4;
  return id.toString().padLeft(idWIdth, '0');
}

String formatPokemonMoveName(String moveName) {
  final words = moveName.split('-').map((e) => e.inCaps).toList();
  final formattedMoveName = words.join(' ');
  return formattedMoveName;
}
