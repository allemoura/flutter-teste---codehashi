package com.codehashi.myapplication.data

class PokemonRepository {

    fun getPokemonList() : List<Pokemon>  = listOf(
        Pokemon(1, "Bulbasaur", "https://pokeres.bastionbot.org/images/pokemon/1.png", "Grass"),
        Pokemon(2, "Ivysaur", "https://pokeres.bastionbot.org/images/pokemon/2.png", "Grass"),
        Pokemon(3, "Venusaur", "https://pokeres.bastionbot.org/images/pokemon/3.png", "Grass"),
        Pokemon(4, "Charmander", "https://pokeres.bastionbot.org/images/pokemon/4.png", "Fire"),
        Pokemon(5, "Charmeleon", "https://pokeres.bastionbot.org/images/pokemon/5.png", "Fire"),
        Pokemon(6, "Charizard", "https://pokeres.bastionbot.org/images/pokemon/6.png", "Fire"),
        Pokemon(7, "Squirtle", "https://pokeres.bastionbot.org/images/pokemon/7.png", "Water"),
        Pokemon(8, "Wartortle", "https://pokeres.bastionbot.org/images/pokemon/8.png", "Water"),
        Pokemon(9, "Blastoise", "https://pokeres.bastionbot.org/images/pokemon/9.png", "Water")
    )
}