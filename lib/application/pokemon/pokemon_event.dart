part of 'pokemon_bloc.dart';

@freezed
class PokemonEvent with _$PokemonEvent {
  const factory PokemonEvent.getPokemonData() = GetPokemonData;

  const factory PokemonEvent.getPokemonDetailsData(String id) =
      GetPokemonDetailsData;
}
