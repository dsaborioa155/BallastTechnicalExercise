import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PokemonRemoteDataSource {
  final Dio client = Dio();

  PokemonRemoteDataSource();

  Future<List<dynamic>> getPokemonData() async {
    try {
      final response =
          await client.get("https://api.tvmaze.com/search/shows?q=pokemon");
      if (response.statusCode == 200) {
        return response.data;
      } else {
        print("Could not get Pokemon Data");
        return [];
      }
    } on DioException catch (error) {
      // Shoud not be like this, but using it for the test only
      // todo: add the right errors
      print("Error $error");
      return [];
    }
  }

  Future<Map<dynamic, dynamic>> getPokemonDetailsData(String id) async {
    try {
      final response = await client.get("https://api.tvmaze.com/shows/$id");
      if (response.statusCode == 200) {
        return response.data;
      } else {
        print("Could not get Pokemon Data");
        return {};
      }
    } on DioException catch (error) {
      // Shoud not be like this, but using it for the test only
      // todo: add the right errors
      print("Error $error");
      return {};
    }
  }
}
