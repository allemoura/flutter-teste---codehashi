import 'package:flutter/material.dart';
import 'package:pokedex_flutter/app/tabs/pokemons_tab.dart';

class PokemonListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pokedex",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: PokemonsTab(),
    );
  }
}
