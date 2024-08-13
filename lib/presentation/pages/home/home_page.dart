import 'package:auto_route/auto_route.dart';
import 'package:ballast_technical_exercise/application/pokemon/pokemon_bloc.dart';
import 'package:ballast_technical_exercise/injection.dart';
import 'package:ballast_technical_exercise/presentation/core/widgets/custom_app_bar.dart';
import 'package:ballast_technical_exercise/presentation/pages/home/widgets/home_search_bar.dart';
import 'package:ballast_technical_exercise/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<dynamic> filteredPokemonData = [];

  @override
  void initState() {
    super.initState();
    filteredPokemonData = [];
  }

  void _filterPokemon(String query, List<dynamic> pokemonData) {
    if (pokemonData.isNotEmpty) {
      final filtered = pokemonData.where((pokemon) {
        final name = pokemon['show']?['name']?.toLowerCase() ?? '';
        return name.contains(query.toLowerCase());
      }).toList();

      setState(() {
        filteredPokemonData = filtered;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PokemonBloc>(
          create: (BuildContext context) =>
              getIt<PokemonBloc>()..add(const PokemonEvent.getPokemonData()),
        )
      ],
      child: BlocConsumer<PokemonBloc, PokemonState>(
        listener: (context, state) {
          if (state.pokemonData.isNotEmpty) {
            setState(() {
              filteredPokemonData = state.pokemonData;
            });
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: const CustomAppBar(
              title: 'Home',
            ),
            body: Column(
              children: [
                HomeSearchBar(
                  hintText: 'Search Pokémon...',
                  onChanged: (query) =>
                      _filterPokemon(query, state.pokemonData),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: state.pokemonData.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16.0,
                              mainAxisSpacing: 16.0,
                              childAspectRatio: 0.8,
                            ),
                            itemCount: filteredPokemonData.length,
                            itemBuilder: (context, index) {
                              final pokemon = filteredPokemonData[index];
                              final name = pokemon?['show']?['name'] ??
                                  'Unknown Pokémon';
                              final imageUrl =
                                  pokemon?['show']?['image']?['medium'] ?? '';

                              return GestureDetector(
                                onTap: () {
                                  final id =
                                      pokemon?["show"]?["id"]?.toString();
                                  if (id != null && id.isNotEmpty) {
                                    context.router.push(
                                      PokemonDetailsRoute(id: id),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Invalid Pokémon ID'),
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                          child: imageUrl.isNotEmpty
                                              ? Image.network(
                                                  imageUrl,
                                                  fit: BoxFit.cover,
                                                  errorBuilder: (context, error,
                                                      stackTrace) {
                                                    return const Center(
                                                      child: Icon(
                                                        Icons.broken_image,
                                                        size: 50,
                                                        color: Colors.grey,
                                                      ),
                                                    );
                                                  },
                                                )
                                              : const Center(
                                                  child: Icon(
                                                    Icons.broken_image,
                                                    size: 50,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          name,
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
