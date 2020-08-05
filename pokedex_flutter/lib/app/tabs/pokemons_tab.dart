import 'package:flutter/material.dart';
import 'package:pokedex_flutter/app/widgets/card_pokemon.dart';

import '../../data/pokemon_repository.dart';
import '../../domain/pokemon.dart';

class PokemonsTab extends StatefulWidget {
  @override
  _PokemonsTabState createState() => _PokemonsTabState();
}

class _PokemonsTabState extends State<PokemonsTab> {
  List<Pokemon> pokemons;

  @override
  void initState() {
    getPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.only(bottom: 15.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 0.0,
          childAspectRatio: 1.4,
        ),
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          return CardPokemon(pokemons[index]);
        });
  }

  //recupera do repository local a lista de pokemons
  getPokemons() {
    pokemons = PokemonRepository().getPokemon();
    setState(() {});
  }
}
