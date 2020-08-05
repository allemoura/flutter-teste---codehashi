import 'package:flutter/material.dart';
import 'package:pokedex_flutter/app/list/pokemon_list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PokeApp',
        home: PokemonListPage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.blue,
            accentColor: Colors.blue));
  }
}
