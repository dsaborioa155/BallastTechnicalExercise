part of 'pokemon_bloc.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState({
    required List<dynamic> pokemonData,
    required Map<dynamic, dynamic> pokemonDetailData,
    required String errorMessage,
  }) = _PokemonState;

  factory PokemonState.initial() => const PokemonState(
        pokemonData: [],
        pokemonDetailData: {},
        errorMessage: '',
      );
}
