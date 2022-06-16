// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'simple_pokemon_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SimplePokemonList _$SimplePokemonListFromJson(Map<String, dynamic> json) {
  return _SimplePokemonList.fromJson(json);
}

/// @nodoc
class _$SimplePokemonListTearOff {
  const _$SimplePokemonListTearOff();

// ignore: unused_element
  _SimplePokemonList call(
      {@required
      @JsonKey(name: 'count')
          int count,
      @required
      @nullable
      @JsonKey(name: 'next', nullable: true)
          String next,
      @required
      @nullable
      @JsonKey(name: 'previous', nullable: true)
          String previous,
      @required
      @JsonKey(name: 'results')
          List<SimplePokemon> simplePokemonList}) {
    return _SimplePokemonList(
      count: count,
      next: next,
      previous: previous,
      simplePokemonList: simplePokemonList,
    );
  }

// ignore: unused_element
  SimplePokemonList fromJson(Map<String, Object> json) {
    return SimplePokemonList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SimplePokemonList = _$SimplePokemonListTearOff();

/// @nodoc
mixin _$SimplePokemonList {
  @JsonKey(name: 'count')
  int get count;
  @nullable
  @JsonKey(name: 'next', nullable: true)
  String get next;
  @nullable
  @JsonKey(name: 'previous', nullable: true)
  String get previous;
  @JsonKey(name: 'results')
  List<SimplePokemon> get simplePokemonList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SimplePokemonListCopyWith<SimplePokemonList> get copyWith;
}

/// @nodoc
abstract class $SimplePokemonListCopyWith<$Res> {
  factory $SimplePokemonListCopyWith(
          SimplePokemonList value, $Res Function(SimplePokemonList) then) =
      _$SimplePokemonListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'count') int count,
      @nullable @JsonKey(name: 'next', nullable: true) String next,
      @nullable @JsonKey(name: 'previous', nullable: true) String previous,
      @JsonKey(name: 'results') List<SimplePokemon> simplePokemonList});
}

/// @nodoc
class _$SimplePokemonListCopyWithImpl<$Res>
    implements $SimplePokemonListCopyWith<$Res> {
  _$SimplePokemonListCopyWithImpl(this._value, this._then);

  final SimplePokemonList _value;
  // ignore: unused_field
  final $Res Function(SimplePokemonList) _then;

  @override
  $Res call({
    Object count = freezed,
    Object next = freezed,
    Object previous = freezed,
    Object simplePokemonList = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      next: next == freezed ? _value.next : next as String,
      previous: previous == freezed ? _value.previous : previous as String,
      simplePokemonList: simplePokemonList == freezed
          ? _value.simplePokemonList
          : simplePokemonList as List<SimplePokemon>,
    ));
  }
}

/// @nodoc
abstract class _$SimplePokemonListCopyWith<$Res>
    implements $SimplePokemonListCopyWith<$Res> {
  factory _$SimplePokemonListCopyWith(
          _SimplePokemonList value, $Res Function(_SimplePokemonList) then) =
      __$SimplePokemonListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'count') int count,
      @nullable @JsonKey(name: 'next', nullable: true) String next,
      @nullable @JsonKey(name: 'previous', nullable: true) String previous,
      @JsonKey(name: 'results') List<SimplePokemon> simplePokemonList});
}

/// @nodoc
class __$SimplePokemonListCopyWithImpl<$Res>
    extends _$SimplePokemonListCopyWithImpl<$Res>
    implements _$SimplePokemonListCopyWith<$Res> {
  __$SimplePokemonListCopyWithImpl(
      _SimplePokemonList _value, $Res Function(_SimplePokemonList) _then)
      : super(_value, (v) => _then(v as _SimplePokemonList));

  @override
  _SimplePokemonList get _value => super._value as _SimplePokemonList;

  @override
  $Res call({
    Object count = freezed,
    Object next = freezed,
    Object previous = freezed,
    Object simplePokemonList = freezed,
  }) {
    return _then(_SimplePokemonList(
      count: count == freezed ? _value.count : count as int,
      next: next == freezed ? _value.next : next as String,
      previous: previous == freezed ? _value.previous : previous as String,
      simplePokemonList: simplePokemonList == freezed
          ? _value.simplePokemonList
          : simplePokemonList as List<SimplePokemon>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SimplePokemonList implements _SimplePokemonList {
  _$_SimplePokemonList(
      {@required
      @JsonKey(name: 'count')
          this.count,
      @required
      @nullable
      @JsonKey(name: 'next', nullable: true)
          this.next,
      @required
      @nullable
      @JsonKey(name: 'previous', nullable: true)
          this.previous,
      @required
      @JsonKey(name: 'results')
          this.simplePokemonList})
      : assert(count != null),
        assert(simplePokemonList != null);

  factory _$_SimplePokemonList.fromJson(Map<String, dynamic> json) =>
      _$_$_SimplePokemonListFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @nullable
  @JsonKey(name: 'next', nullable: true)
  final String next;
  @override
  @nullable
  @JsonKey(name: 'previous', nullable: true)
  final String previous;
  @override
  @JsonKey(name: 'results')
  final List<SimplePokemon> simplePokemonList;

  @override
  String toString() {
    return 'SimplePokemonList(count: $count, next: $next, previous: $previous, simplePokemonList: $simplePokemonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimplePokemonList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.simplePokemonList, simplePokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.simplePokemonList, simplePokemonList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(simplePokemonList);

  @JsonKey(ignore: true)
  @override
  _$SimplePokemonListCopyWith<_SimplePokemonList> get copyWith =>
      __$SimplePokemonListCopyWithImpl<_SimplePokemonList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SimplePokemonListToJson(this);
  }
}

abstract class _SimplePokemonList implements SimplePokemonList {
  factory _SimplePokemonList(
      {@required
      @JsonKey(name: 'count')
          int count,
      @required
      @nullable
      @JsonKey(name: 'next', nullable: true)
          String next,
      @required
      @nullable
      @JsonKey(name: 'previous', nullable: true)
          String previous,
      @required
      @JsonKey(name: 'results')
          List<SimplePokemon> simplePokemonList}) = _$_SimplePokemonList;

  factory _SimplePokemonList.fromJson(Map<String, dynamic> json) =
      _$_SimplePokemonList.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @nullable
  @JsonKey(name: 'next', nullable: true)
  String get next;
  @override
  @nullable
  @JsonKey(name: 'previous', nullable: true)
  String get previous;
  @override
  @JsonKey(name: 'results')
  List<SimplePokemon> get simplePokemonList;
  @override
  @JsonKey(ignore: true)
  _$SimplePokemonListCopyWith<_SimplePokemonList> get copyWith;
}
