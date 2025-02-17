import 'package:auto_route/auto_route.dart';
import 'package:ballast_technical_exercise/injection.dart';
import 'package:ballast_technical_exercise/presentation/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ballast_technical_exercise/application/pokemon/pokemon_bloc.dart';

@RoutePage()
class PokemonDetailsPage extends StatelessWidget {
  final String id;

  const PokemonDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Pokemon Details',
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<PokemonBloc>()..add(PokemonEvent.getPokemonDetailsData(id)),
        child: BlocConsumer<PokemonBloc, PokemonState>(
          listener: (context, state) {},
          builder: (context, state) {
            final pokemonDetails = state.pokemonDetailData;

            if (pokemonDetails.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }

            final imageUrl = pokemonDetails['image']?['medium'] ?? '';
            final name = pokemonDetails['name'] ?? 'Unknown Pokémon';
            final description =
                pokemonDetails['summary'] ?? 'No description available.';

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: imageUrl.isNotEmpty
                            ? Image.network(
                                imageUrl,
                                height: 300,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Center(
                                    child: Icon(
                                      Icons.broken_image,
                                      size: 100,
                                      color: Colors.grey,
                                    ),
                                  );
                                },
                              )
                            : const Center(
                                child: Icon(
                                  Icons.broken_image,
                                  size: 100,
                                  color: Colors.grey,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
