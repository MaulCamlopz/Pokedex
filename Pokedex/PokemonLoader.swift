//
//  PokemonLoader.swift
//  Pokedex
//
//  Created by Maul Camlopz on 23/04/25.
//

import Foundation

struct PokemonResponse: Codable {
    let results: [PokemonDataModel]
}

struct PokemonDataModel: Codable {
    let name: String
    let url: String
}

struct PokemonLoader {
    
    func loadPokemons() async throws -> [PokemonDataModel] {
        
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?limit=151&offset=0") else { return [] }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            print("Failed to load Pokemons")
            return []
        }
        
        print(response)
        
        let decoded = try JSONDecoder().decode(PokemonResponse.self, from: data)
        
        print(decoded)
        
        return decoded.results
        
    }
    
}
