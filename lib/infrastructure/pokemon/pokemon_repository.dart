import 'package:ballast_technical_exercise/infrastructure/pokemon/pokemon_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  PokemonRepository({required this.remoteDataSource});

  // Would normally create a Failure Class instead of returning a String with the error
  Future<Either<String, List<dynamic>>> getPokemonData() async {
    try {
      final response = await remoteDataSource.getPokemonData();
      if (response.toString().isNotEmpty) {
        return Right(response);
      } else {
        return const Left("Error when getting the Pokemon Data");
      }
    } catch (error) {
      // Catch any other exceptions that might occur
      print("Unexpected Error: $error");
      return const Left("Unexpected error occurred");
    }
  }

  // Would normally create a Failure Class instead of returning a String with the error
  Future<Either<String, Map<dynamic, dynamic>>> getPokemonDetailsData(
      String id) async {
    try {
      final response = await remoteDataSource.getPokemonDetailsData(id);
      if (response.toString().isNotEmpty) {
        return Right(response);
      } else {
        return const Left("Error when getting the Pokemon Details Data");
      }
    } catch (error) {
      // Catch any other exceptions that might occur
      print("Unexpected Error: $error");
      return const Left("Unexpected error occurred");
    }
  }
}
