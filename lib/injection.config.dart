// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/pokemon/pokemon_bloc.dart' as _i5;
import 'infrastructure/pokemon/pokemon_remote_data_source.dart' as _i3;
import 'infrastructure/pokemon/pokemon_repository.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.PokemonRemoteDataSource>(
        () => _i3.PokemonRemoteDataSource());
    gh.lazySingleton<_i4.PokemonRepository>(() => _i4.PokemonRepository(
        remoteDataSource: gh<_i3.PokemonRemoteDataSource>()));
    gh.factory<_i5.PokemonBloc>(
        () => _i5.PokemonBloc(gh<_i4.PokemonRepository>()));
    return this;
  }
}
