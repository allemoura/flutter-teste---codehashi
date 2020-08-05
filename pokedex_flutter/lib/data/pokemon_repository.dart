import 'package:pokedex_flutter/domain/pokemon.dart';

class PokemonRepository {
  List<Pokemon> getPokemon() => [
        Pokemon(
            id: 1,
            name: "Bulbasaur",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/1.png",
            type: "Grass"),
        Pokemon(
            id: 2,
            name: "Ivysaur",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/2.png",
            type: "Grass"),
        Pokemon(
            id: 3,
            name: "Venusaur",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/3.png",
            type: "Grass"),
        Pokemon(
            id: 4,
            name: "Charmander",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/4.png",
            type: "Fire"),
        Pokemon(
            id: 5,
            name: "Charmeleon",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/5.png",
            type: "Fire"),
        Pokemon(
            id: 6,
            name: "Charizard",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/6.png",
            type: "Fire"),
        Pokemon(
            id: 7,
            name: "Squirtle",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/7.png",
            type: "Water"),
        Pokemon(
            id: 8,
            name: "Wartortle",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/8.png",
            type: "Water"),
        Pokemon(
            id: 9,
            name: "Blastoise",
            imageUrl: "https://pokeres.bastionbot.org/images/pokemon/9.png",
            type: "Water"),
      ];
}
