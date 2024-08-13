// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonState {
  List<dynamic> get pokemonData => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get pokemonDetailData =>
      throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res, PokemonState>;
  @useResult
  $Res call(
      {List<dynamic> pokemonData,
      Map<dynamic, dynamic> pokemonDetailData,
      String errorMessage});
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonData = null,
    Object? pokemonDetailData = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      pokemonData: null == pokemonData
          ? _value.pokemonData
          : pokemonData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      pokemonDetailData: null == pokemonDetailData
          ? _value.pokemonDetailData
          : pokemonDetailData // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonStateCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$_PokemonStateCopyWith(
          _$_PokemonState value, $Res Function(_$_PokemonState) then) =
      __$$_PokemonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> pokemonData,
      Map<dynamic, dynamic> pokemonDetailData,
      String errorMessage});
}

/// @nodoc
class __$$_PokemonStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$_PokemonState>
    implements _$$_PokemonStateCopyWith<$Res> {
  __$$_PokemonStateCopyWithImpl(
      _$_PokemonState _value, $Res Function(_$_PokemonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonData = null,
    Object? pokemonDetailData = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_PokemonState(
      pokemonData: null == pokemonData
          ? _value._pokemonData
          : pokemonData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      pokemonDetailData: null == pokemonDetailData
          ? _value._pokemonDetailData
          : pokemonDetailData // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PokemonState implements _PokemonState {
  const _$_PokemonState(
      {required final List<dynamic> pokemonData,
      required final Map<dynamic, dynamic> pokemonDetailData,
      required this.errorMessage})
      : _pokemonData = pokemonData,
        _pokemonDetailData = pokemonDetailData;

  final List<dynamic> _pokemonData;
  @override
  List<dynamic> get pokemonData {
    if (_pokemonData is EqualUnmodifiableListView) return _pokemonData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonData);
  }

  final Map<dynamic, dynamic> _pokemonDetailData;
  @override
  Map<dynamic, dynamic> get pokemonDetailData {
    if (_pokemonDetailData is EqualUnmodifiableMapView)
      return _pokemonDetailData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pokemonDetailData);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PokemonState(pokemonData: $pokemonData, pokemonDetailData: $pokemonDetailData, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonState &&
            const DeepCollectionEquality()
                .equals(other._pokemonData, _pokemonData) &&
            const DeepCollectionEquality()
                .equals(other._pokemonDetailData, _pokemonDetailData) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pokemonData),
      const DeepCollectionEquality().hash(_pokemonDetailData),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonStateCopyWith<_$_PokemonState> get copyWith =>
      __$$_PokemonStateCopyWithImpl<_$_PokemonState>(this, _$identity);
}

abstract class _PokemonState implements PokemonState {
  const factory _PokemonState(
      {required final List<dynamic> pokemonData,
      required final Map<dynamic, dynamic> pokemonDetailData,
      required final String errorMessage}) = _$_PokemonState;

  @override
  List<dynamic> get pokemonData;
  @override
  Map<dynamic, dynamic> get pokemonDetailData;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonStateCopyWith<_$_PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPokemonData,
    required TResult Function(String id) getPokemonDetailsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPokemonData,
    TResult? Function(String id)? getPokemonDetailsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPokemonData,
    TResult Function(String id)? getPokemonDetailsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPokemonData value) getPokemonData,
    required TResult Function(GetPokemonDetailsData value)
        getPokemonDetailsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPokemonData value)? getPokemonData,
    TResult? Function(GetPokemonDetailsData value)? getPokemonDetailsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPokemonData value)? getPokemonData,
    TResult Function(GetPokemonDetailsData value)? getPokemonDetailsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEventCopyWith<$Res> {
  factory $PokemonEventCopyWith(
          PokemonEvent value, $Res Function(PokemonEvent) then) =
      _$PokemonEventCopyWithImpl<$Res, PokemonEvent>;
}

/// @nodoc
class _$PokemonEventCopyWithImpl<$Res, $Val extends PokemonEvent>
    implements $PokemonEventCopyWith<$Res> {
  _$PokemonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPokemonDataCopyWith<$Res> {
  factory _$$GetPokemonDataCopyWith(
          _$GetPokemonData value, $Res Function(_$GetPokemonData) then) =
      __$$GetPokemonDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPokemonDataCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$GetPokemonData>
    implements _$$GetPokemonDataCopyWith<$Res> {
  __$$GetPokemonDataCopyWithImpl(
      _$GetPokemonData _value, $Res Function(_$GetPokemonData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPokemonData implements GetPokemonData {
  const _$GetPokemonData();

  @override
  String toString() {
    return 'PokemonEvent.getPokemonData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPokemonData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPokemonData,
    required TResult Function(String id) getPokemonDetailsData,
  }) {
    return getPokemonData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPokemonData,
    TResult? Function(String id)? getPokemonDetailsData,
  }) {
    return getPokemonData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPokemonData,
    TResult Function(String id)? getPokemonDetailsData,
    required TResult orElse(),
  }) {
    if (getPokemonData != null) {
      return getPokemonData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPokemonData value) getPokemonData,
    required TResult Function(GetPokemonDetailsData value)
        getPokemonDetailsData,
  }) {
    return getPokemonData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPokemonData value)? getPokemonData,
    TResult? Function(GetPokemonDetailsData value)? getPokemonDetailsData,
  }) {
    return getPokemonData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPokemonData value)? getPokemonData,
    TResult Function(GetPokemonDetailsData value)? getPokemonDetailsData,
    required TResult orElse(),
  }) {
    if (getPokemonData != null) {
      return getPokemonData(this);
    }
    return orElse();
  }
}

abstract class GetPokemonData implements PokemonEvent {
  const factory GetPokemonData() = _$GetPokemonData;
}

/// @nodoc
abstract class _$$GetPokemonDetailsDataCopyWith<$Res> {
  factory _$$GetPokemonDetailsDataCopyWith(_$GetPokemonDetailsData value,
          $Res Function(_$GetPokemonDetailsData) then) =
      __$$GetPokemonDetailsDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetPokemonDetailsDataCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$GetPokemonDetailsData>
    implements _$$GetPokemonDetailsDataCopyWith<$Res> {
  __$$GetPokemonDetailsDataCopyWithImpl(_$GetPokemonDetailsData _value,
      $Res Function(_$GetPokemonDetailsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPokemonDetailsData(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPokemonDetailsData implements GetPokemonDetailsData {
  const _$GetPokemonDetailsData(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PokemonEvent.getPokemonDetailsData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPokemonDetailsData &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPokemonDetailsDataCopyWith<_$GetPokemonDetailsData> get copyWith =>
      __$$GetPokemonDetailsDataCopyWithImpl<_$GetPokemonDetailsData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPokemonData,
    required TResult Function(String id) getPokemonDetailsData,
  }) {
    return getPokemonDetailsData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPokemonData,
    TResult? Function(String id)? getPokemonDetailsData,
  }) {
    return getPokemonDetailsData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPokemonData,
    TResult Function(String id)? getPokemonDetailsData,
    required TResult orElse(),
  }) {
    if (getPokemonDetailsData != null) {
      return getPokemonDetailsData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPokemonData value) getPokemonData,
    required TResult Function(GetPokemonDetailsData value)
        getPokemonDetailsData,
  }) {
    return getPokemonDetailsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPokemonData value)? getPokemonData,
    TResult? Function(GetPokemonDetailsData value)? getPokemonDetailsData,
  }) {
    return getPokemonDetailsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPokemonData value)? getPokemonData,
    TResult Function(GetPokemonDetailsData value)? getPokemonDetailsData,
    required TResult orElse(),
  }) {
    if (getPokemonDetailsData != null) {
      return getPokemonDetailsData(this);
    }
    return orElse();
  }
}

abstract class GetPokemonDetailsData implements PokemonEvent {
  const factory GetPokemonDetailsData(final String id) =
      _$GetPokemonDetailsData;

  String get id;
  @JsonKey(ignore: true)
  _$$GetPokemonDetailsDataCopyWith<_$GetPokemonDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}
