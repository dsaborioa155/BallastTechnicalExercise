import 'dart:async';
import 'package:ballast_technical_exercise/infrastructure/pokemon/pokemon_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pokemon_bloc.freezed.dart';

part 'pokemon_state.dart';
part 'pokemon_event.dart';

@injectable
class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final PokemonRepository _pokemonRepository;

  PokemonBloc(this._pokemonRepository) : super(PokemonState.initial()) {
    _setupEventActions();
  }

  _setupEventActions() {
    on<GetPokemonData>(((event, emit) async {
      emit(await _performGetPokemonData(_pokemonRepository.getPokemonData));
    }));

    on<GetPokemonDetailsData>((event, emit) async {
      emit(await _performGetPokemonDetailsData(event.id));
    });
  }

  Future<PokemonState> _performGetPokemonData(
      Future<Either<String, List<dynamic>>> Function() forwardedCall) async {
    final response = await forwardedCall();
    return response.fold(
      (failureMessage) => state.copyWith(errorMessage: failureMessage),
      (pokemonData) => state.copyWith(pokemonData: pokemonData),
    );
  }

  Future<PokemonState> _performGetPokemonDetailsData(String id) async {
    final response = await _pokemonRepository.getPokemonDetailsData(id);
    return response.fold(
      (failureMessage) => state.copyWith(errorMessage: failureMessage),
      (pokemonDetailData) =>
          state.copyWith(pokemonDetailData: pokemonDetailData),
    );
  }
}
