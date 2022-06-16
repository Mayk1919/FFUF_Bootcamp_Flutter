// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonMove _$PokemonMoveFromJson(Map<String, dynamic> json) {
  return _PokemonMove.fromJson(json);
}

/// @nodoc
class _$PokemonMoveTearOff {
  const _$PokemonMoveTearOff();

// ignore: unused_element
  _PokemonMove call({@JsonKey(name: 'move') MoveInfo moveInfo}) {
    return _PokemonMove(
      moveInfo: moveInfo,
    );
  }

// ignore: unused_element
  PokemonMove fromJson(Map<String, Object> json) {
    return PokemonMove.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonMove = _$PokemonMoveTearOff();

/// @nodoc
mixin _$PokemonMove {
  @JsonKey(name: 'move')
  MoveInfo get moveInfo;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonMoveCopyWith<PokemonMove> get copyWith;
}

/// @nodoc
abstract class $PokemonMoveCopyWith<$Res> {
  factory $PokemonMoveCopyWith(
          PokemonMove value, $Res Function(PokemonMove) then) =
      _$PokemonMoveCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'move') MoveInfo moveInfo});

  $MoveInfoCopyWith<$Res> get moveInfo;
}

/// @nodoc
class _$PokemonMoveCopyWithImpl<$Res> implements $PokemonMoveCopyWith<$Res> {
  _$PokemonMoveCopyWithImpl(this._value, this._then);

  final PokemonMove _value;
  // ignore: unused_field
  final $Res Function(PokemonMove) _then;

  @override
  $Res call({
    Object moveInfo = freezed,
  }) {
    return _then(_value.copyWith(
      moveInfo: moveInfo == freezed ? _value.moveInfo : moveInfo as MoveInfo,
    ));
  }

  @override
  $MoveInfoCopyWith<$Res> get moveInfo {
    if (_value.moveInfo == null) {
      return null;
    }
    return $MoveInfoCopyWith<$Res>(_value.moveInfo, (value) {
      return _then(_value.copyWith(moveInfo: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonMoveCopyWith<$Res>
    implements $PokemonMoveCopyWith<$Res> {
  factory _$PokemonMoveCopyWith(
          _PokemonMove value, $Res Function(_PokemonMove) then) =
      __$PokemonMoveCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'move') MoveInfo moveInfo});

  @override
  $MoveInfoCopyWith<$Res> get moveInfo;
}

/// @nodoc
class __$PokemonMoveCopyWithImpl<$Res> extends _$PokemonMoveCopyWithImpl<$Res>
    implements _$PokemonMoveCopyWith<$Res> {
  __$PokemonMoveCopyWithImpl(
      _PokemonMove _value, $Res Function(_PokemonMove) _then)
      : super(_value, (v) => _then(v as _PokemonMove));

  @override
  _PokemonMove get _value => super._value as _PokemonMove;

  @override
  $Res call({
    Object moveInfo = freezed,
  }) {
    return _then(_PokemonMove(
      moveInfo: moveInfo == freezed ? _value.moveInfo : moveInfo as MoveInfo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonMove implements _PokemonMove {
  _$_PokemonMove({@JsonKey(name: 'move') this.moveInfo});

  factory _$_PokemonMove.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonMoveFromJson(json);

  @override
  @JsonKey(name: 'move')
  final MoveInfo moveInfo;

  @override
  String toString() {
    return 'PokemonMove(moveInfo: $moveInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonMove &&
            (identical(other.moveInfo, moveInfo) ||
                const DeepCollectionEquality()
                    .equals(other.moveInfo, moveInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moveInfo);

  @JsonKey(ignore: true)
  @override
  _$PokemonMoveCopyWith<_PokemonMove> get copyWith =>
      __$PokemonMoveCopyWithImpl<_PokemonMove>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonMoveToJson(this);
  }
}

abstract class _PokemonMove implements PokemonMove {
  factory _PokemonMove({@JsonKey(name: 'move') MoveInfo moveInfo}) =
      _$_PokemonMove;

  factory _PokemonMove.fromJson(Map<String, dynamic> json) =
      _$_PokemonMove.fromJson;

  @override
  @JsonKey(name: 'move')
  MoveInfo get moveInfo;
  @override
  @JsonKey(ignore: true)
  _$PokemonMoveCopyWith<_PokemonMove> get copyWith;
}
