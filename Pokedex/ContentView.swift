//
//  ContentView.swift
//  Pokedex
//
//  Created by Maul Camlopz on 23/04/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Query(sort: \Pokemon.name) private var pokemons: [Pokemon]

    var body: some View {
        NavigationView {
            VStack {
                if pokemons.isEmpty {
                    Text("No hay Pokémon")
                        .padding()
                } else {
                    List(pokemons) { pokemon in
                        VStack(alignment: .leading) {
                            Text(pokemon.name.capitalized)
                                .font(.headline)
                            Text(pokemon.url)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Lista Pokémon")
        }
    }
    
}

#Preview {
    ContentView()
}
