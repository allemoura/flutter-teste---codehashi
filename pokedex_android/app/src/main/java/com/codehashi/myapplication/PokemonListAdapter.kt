package com.codehashi.myapplication

import android.content.Context
import android.graphics.Color
import android.net.Uri
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.core.content.res.ResourcesCompat
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions
import com.codehashi.myapplication.data.Pokemon
import com.codehashi.myapplication.databinding.PokemonItemBinding

class PokemonListAdapter(val context: Context) : ListAdapter<Pokemon, PokemonListAdapter.PokemonItemViewHolder>(
    DIFF_CALLBACK
) {
    companion object {
        private val DIFF_CALLBACK = object : DiffUtil.ItemCallback<Pokemon>() {
            override fun areItemsTheSame(oldItem: Pokemon, newItem: Pokemon): Boolean = oldItem.id == newItem.id
            override fun areContentsTheSame(oldItem: Pokemon, newItem: Pokemon): Boolean = oldItem == newItem
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PokemonItemViewHolder {
        val itemBinding = PokemonItemBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return PokemonItemViewHolder(itemBinding)
    }

    override fun onBindViewHolder(holder: PokemonItemViewHolder, position: Int) {
        val pokemon = getItem(position)
        holder.bind(pokemon)
    }

    inner class PokemonItemViewHolder(private val itemBinding: PokemonItemBinding) : RecyclerView.ViewHolder(itemBinding.root) {
        fun bind(pokemon: Pokemon) {
            itemBinding.tvId.text = "#${pokemon.id.toString().padStart(3, '0')}"
            itemBinding.tvName.text = pokemon.name
            itemBinding.tvType.text = pokemon.type
            Glide.with(context)
                .load(pokemon.imageUrl)
                .transition(DrawableTransitionOptions.withCrossFade())
                .into(itemBinding.ivImage)

            itemBinding.card.setCardBackgroundColor(when(pokemon.type) {
                "Grass" -> ResourcesCompat.getColor(context.resources, R.color.typeGrass, null)
                "Fire" -> ResourcesCompat.getColor(context.resources, R.color.typeFire, null)
                "Water" -> ResourcesCompat.getColor(context.resources, R.color.typeWater, null)
                else -> Color.GRAY
            })
        }
    }
}