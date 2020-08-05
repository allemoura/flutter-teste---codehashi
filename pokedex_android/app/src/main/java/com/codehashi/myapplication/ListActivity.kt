package com.codehashi.myapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.DefaultItemAnimator
import androidx.recyclerview.widget.GridLayoutManager
import com.codehashi.myapplication.data.PokemonRepository
import com.codehashi.myapplication.databinding.ActivityListBinding
import kotlinx.android.synthetic.main.activity_list.*

class ListActivity : AppCompatActivity() {
    private  var pokemons = PokemonRepository().getPokemonList()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_list)

        //load pokemons

        val recyclerView = list
        val adapter = PokemonListAdapter(this)
        val layoutManager = GridLayoutManager(this, 2)

        recyclerView.adapter = adapter

        recyclerView.layoutManager = layoutManager

        recyclerView.setHasFixedSize(true)

        recyclerView.itemAnimator = DefaultItemAnimator()

        adapter.submitList(pokemons)

    }
}