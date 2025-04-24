//
//  DataImporter.swift
//  Pokedex
//
//  Created by Maul Camlopz on 23/04/25.
//

import Foundation
import SwiftData

struct DataImporter {
    
    let context: ModelContext
    let pokemonLoader: PokemonLoader
    
    @MainActor
    func importData() async throws {
        
        // Predicate to fetch PostModel objects using SwiftData
        var pokemonDescriptor  = FetchDescriptor<Pokemon>()
        // set limit to 1
        pokemonDescriptor.fetchLimit = 1
        
        let persistedPokemons = try context.fetch(pokemonDescriptor)
        
        if persistedPokemons.isEmpty {
            
            let pokemons = try await pokemonLoader.loadPokemons()
            
            if !pokemons.isEmpty {
                pokemons.forEach { pokemon in
                    // insert data into on-device database
                    let pokemon = Pokemon(name: pokemon.name, url: pokemon.url)
                    context.insert(pokemon)
                }
            }
            
        }
        
    }
    
}
