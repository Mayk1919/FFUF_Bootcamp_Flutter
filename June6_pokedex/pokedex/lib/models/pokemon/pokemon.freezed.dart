// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
class _$PokemonTearOff {
  const _$PokemonTearOff();

// ignore: unused_element
  _Pokemon call(
      {@required @JsonKey(name: 'id') int id,
      @required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'sprites') PokemonSprites sprites,
      @required @JsonKey(name: 'types') List<PokemonType> typeList,
      @required @JsonKey(name: 'abilities') List<PokemonAbility> abilityList,
      @required @JsonKey(name: 'height') int heightInDecimeters,
      @required @JsonKey(name: 'weight') int weightInDecimeters,
      @required @JsonKey(name: 'base_experience') int baseExperience,
      @required @JsonKey(name: 'stats') List<PokemonBaseStat> baseStatList,
      @required @JsonKey(name: 'species') SpeciesInfo speciesInfo,
      @required @JsonKey(name: 'moves') List<PokemonMove> moveList}) {
    return _Pokemon(
      id: id,
      name: name,
      sprites: sprites,
      typeList: typeList,
      abilityList: abilityList,
      heightInDecimeters: heightInDecimeters,
      weightInDecimeters: weightInDecimeters,
      baseExperience: baseExperience,
      baseStatList: baseStatList,
      speciesInfo: speciesInfo,
      moveList: moveList,
    );
  }

// ignore: unused_element
  Pokemon fromJson(Map<String, Object> json) {
    return Pokemon.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Pokemon = _$PokemonTearOff();

/// @nodoc
mixin _$Pokemon {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'sprites')
  PokemonSprites get sprites;
  @JsonKey(name: 'types')
  List<PokemonType> get typeList;
  @JsonKey(name: 'abilities')
  List<PokemonAbility> get abilityList;
  @JsonKey(name: 'height')
  int get heightInDecimeters;
  @JsonKey(name: 'weight')
  int get weightInDecimeters;
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @JsonKey(name: 'stats')
  List<PokemonBaseStat> get baseStatList;
  @JsonKey(name: 'species')
  SpeciesInfo get speciesInfo;
  @JsonKey(name: 'moves')
  List<PokemonMove> get moveList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'sprites') PokemonSprites sprites,
      @JsonKey(name: 'types') List<PokemonType> typeList,
      @JsonKey(name: 'abilities') List<PokemonAbility> abilityList,
      @JsonKey(name: 'height') int heightInDecimeters,
      @JsonKey(name: 'weight') int weightInDecimeters,
      @JsonKey(name: 'base_experience') int baseExperience,
      @JsonKey(name: 'stats') List<PokemonBaseStat> baseStatList,
      @JsonKey(name: 'species') SpeciesInfo speciesInfo,
      @JsonKey(name: 'moves') List<PokemonMove> moveList});

  $PokemonSpritesCopyWith<$Res> get sprites;
  $SpeciesInfoCopyWith<$Res> get speciesInfo;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sprites = freezed,
    Object typeList = freezed,
    Object abilityList = freezed,
    Object heightInDecimeters = freezed,
    Object weightInDecimeters = freezed,
    Object baseExperience = freezed,
    Object baseStatList = freezed,
    Object speciesInfo = freezed,
    Object moveList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      sprites: sprites == freezed ? _value.sprites : sprites as PokemonSprites,
      typeList:
          typeList == freezed ? _value.typeList : typeList as List<PokemonType>,
      abilityList: abilityList == freezed
          ? _value.abilityList
          : abilityList as List<PokemonAbility>,
      heightInDecimeters: heightInDecimeters == freezed
          ? _value.heightInDecimeters
          : heightInDecimeters as int,
      weightInDecimeters: weightInDecimeters == freezed
          ? _value.weightInDecimeters
          : weightInDecimeters as int,
      baseExperience: baseExperience == freezed
          ? _value.baseExperience
          : baseExperience as int,
      baseStatList: baseStatList == freezed
          ? _value.baseStatList
          : baseStatList as List<PokemonBaseStat>,
      speciesInfo: speciesInfo == freezed
          ? _value.speciesInfo
          : speciesInfo as SpeciesInfo,
      moveList:
          moveList == freezed ? _value.moveList : moveList as List<PokemonMove>,
    ));
  }

  @override
  $PokemonSpritesCopyWith<$Res> get sprites {
    if (_value.sprites == null) {
      return null;
    }
    return $PokemonSpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value));
    });
  }

  @override
  $SpeciesInfoCopyWith<$Res> get speciesInfo {
    if (_value.speciesInfo == null) {
      return null;
    }
    return $SpeciesInfoCopyWith<$Res>(_value.speciesInfo, (value) {
      return _then(_value.copyWith(speciesInfo: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) then) =
      __$PokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'sprites') PokemonSprites sprites,
      @JsonKey(name: 'types') List<PokemonType> typeList,
      @JsonKey(name: 'abilities') List<PokemonAbility> abilityList,
      @JsonKey(name: 'height') int heightInDecimeters,
      @JsonKey(name: 'weight') int weightInDecimeters,
      @JsonKey(name: 'base_experience') int baseExperience,
      @JsonKey(name: 'stats') List<PokemonBaseStat> baseStatList,
      @JsonKey(name: 'species') SpeciesInfo speciesInfo,
      @JsonKey(name: 'moves') List<PokemonMove> moveList});

  @override
  $PokemonSpritesCopyWith<$Res> get sprites;
  @override
  $SpeciesInfoCopyWith<$Res> get speciesInfo;
}

/// @nodoc
class __$PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(_Pokemon _value, $Res Function(_Pokemon) _then)
      : super(_value, (v) => _then(v as _Pokemon));

  @override
  _Pokemon get _value => super._value as _Pokemon;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sprites = freezed,
    Object typeList = freezed,
    Object abilityList = freezed,
    Object heightInDecimeters = freezed,
    Object weightInDecimeters = freezed,
    Object baseExperience = freezed,
    Object baseStatList = freezed,
    Object speciesInfo = freezed,
    Object moveList = freezed,
  }) {
    return _then(_Pokemon(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      sprites: sprites == freezed ? _value.sprites : sprites as PokemonSprites,
      typeList:
          typeList == freezed ? _value.typeList : typeList as List<PokemonType>,
      abilityList: abilityList == freezed
          ? _value.abilityList
          : abilityList as List<PokemonAbility>,
      heightInDecimeters: heightInDecimeters == freezed
          ? _value.heightInDecimeters
          : heightInDecimeters as int,
      weightInDecimeters: weightInDecimeters == freezed
          ? _value.weightInDecimeters
          : weightInDecimeters as int,
      baseExperience: baseExperience == freezed
          ? _value.baseExperience
          : baseExperience as int,
      baseStatList: baseStatList == freezed
          ? _value.baseStatList
          : baseStatList as List<PokemonBaseStat>,
      speciesInfo: speciesInfo == freezed
          ? _value.speciesInfo
          : speciesInfo as SpeciesInfo,
      moveList:
          moveList == freezed ? _value.moveList : moveList as List<PokemonMove>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Pokemon implements _Pokemon {
  _$_Pokemon(
      {@required @JsonKey(name: 'id') this.id,
      @required @JsonKey(name: 'name') this.name,
      @required @JsonKey(name: 'sprites') this.sprites,
      @required @JsonKey(name: 'types') this.typeList,
      @required @JsonKey(name: 'abilities') this.abilityList,
      @required @JsonKey(name: 'height') this.heightInDecimeters,
      @required @JsonKey(name: 'weight') this.weightInDecimeters,
      @required @JsonKey(name: 'base_experience') this.baseExperience,
      @required @JsonKey(name: 'stats') this.baseStatList,
      @required @JsonKey(name: 'species') this.speciesInfo,
      @required @JsonKey(name: 'moves') this.moveList})
      : assert(id != null),
        assert(name != null),
        assert(sprites != null),
        assert(typeList != null),
        assert(abilityList != null),
        assert(heightInDecimeters != null),
        assert(weightInDecimeters != null),
        assert(baseExperience != null),
        assert(baseStatList != null),
        assert(speciesInfo != null),
        assert(moveList != null);

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'sprites')
  final PokemonSprites sprites;
  @override
  @JsonKey(name: 'types')
  final List<PokemonType> typeList;
  @override
  @JsonKey(name: 'abilities')
  final List<PokemonAbility> abilityList;
  @override
  @JsonKey(name: 'height')
  final int heightInDecimeters;
  @override
  @JsonKey(name: 'weight')
  final int weightInDecimeters;
  @override
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  @override
  @JsonKey(name: 'stats')
  final List<PokemonBaseStat> baseStatList;
  @override
  @JsonKey(name: 'species')
  final SpeciesInfo speciesInfo;
  @override
  @JsonKey(name: 'moves')
  final List<PokemonMove> moveList;

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, sprites: $sprites, typeList: $typeList, abilityList: $abilityList, heightInDecimeters: $heightInDecimeters, weightInDecimeters: $weightInDecimeters, baseExperience: $baseExperience, baseStatList: $baseStatList, speciesInfo: $speciesInfo, moveList: $moveList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pokemon &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sprites, sprites) ||
                const DeepCollectionEquality()
                    .equals(other.sprites, sprites)) &&
            (identical(other.typeList, typeList) ||
                const DeepCollectionEquality()
                    .equals(other.typeList, typeList)) &&
            (identical(other.abilityList, abilityList) ||
                const DeepCollectionEquality()
                    .equals(other.abilityList, abilityList)) &&
            (identical(other.heightInDecimeters, heightInDecimeters) ||
                const DeepCollectionEquality()
                    .equals(other.heightInDecimeters, heightInDecimeters)) &&
            (identical(other.weightInDecimeters, weightInDecimeters) ||
                const DeepCollectionEquality()
                    .equals(other.weightInDecimeters, weightInDecimeters)) &&
            (identical(other.baseExperience, baseExperience) ||
                const DeepCollectionEquality()
                    .equals(other.baseExperience, baseExperience)) &&
            (identical(other.baseStatList, baseStatList) ||
                const DeepCollectionEquality()
                    .equals(other.baseStatList, baseStatList)) &&
            (identical(other.speciesInfo, speciesInfo) ||
                const DeepCollectionEquality()
                    .equals(other.speciesInfo, speciesInfo)) &&
            (identical(other.moveList, moveList) ||
                const DeepCollectionEquality()
                    .equals(other.moveList, moveList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sprites) ^
      const DeepCollectionEquality().hash(typeList) ^
      const DeepCollectionEquality().hash(abilityList) ^
      const DeepCollectionEquality().hash(heightInDecimeters) ^
      const DeepCollectionEquality().hash(weightInDecimeters) ^
      const DeepCollectionEquality().hash(baseExperience) ^
      const DeepCollectionEquality().hash(baseStatList) ^
      const DeepCollectionEquality().hash(speciesInfo) ^
      const DeepCollectionEquality().hash(moveList);

  @JsonKey(ignore: true)
  @override
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonToJson(this);
  }
}

abstract class _Pokemon implements Pokemon {
  factory _Pokemon(
      {@required
      @JsonKey(name: 'id')
          int id,
      @required
      @JsonKey(name: 'name')
          String name,
      @required
      @JsonKey(name: 'sprites')
          PokemonSprites sprites,
      @required
      @JsonKey(name: 'types')
          List<PokemonType> typeList,
      @required
      @JsonKey(name: 'abilities')
          List<PokemonAbility> abilityList,
      @required
      @JsonKey(name: 'height')
          int heightInDecimeters,
      @required
      @JsonKey(name: 'weight')
          int weightInDecimeters,
      @required
      @JsonKey(name: 'base_experience')
          int baseExperience,
      @required
      @JsonKey(name: 'stats')
          List<PokemonBaseStat> baseStatList,
      @required
      @JsonKey(name: 'species')
          SpeciesInfo speciesInfo,
      @required
      @JsonKey(name: 'moves')
          List<PokemonMove> moveList}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'sprites')
  PokemonSprites get sprites;
  @override
  @JsonKey(name: 'types')
  List<PokemonType> get typeList;
  @override
  @JsonKey(name: 'abilities')
  List<PokemonAbility> get abilityList;
  @override
  @JsonKey(name: 'height')
  int get heightInDecimeters;
  @override
  @JsonKey(name: 'weight')
  int get weightInDecimeters;
  @override
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @override
  @JsonKey(name: 'stats')
  List<PokemonBaseStat> get baseStatList;
  @override
  @JsonKey(name: 'species')
  SpeciesInfo get speciesInfo;
  @override
  @JsonKey(name: 'moves')
  List<PokemonMove> get moveList;
  @override
  @JsonKey(ignore: true)
  _$PokemonCopyWith<_Pokemon> get copyWith;
}
