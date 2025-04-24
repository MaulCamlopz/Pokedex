//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Maul Camlopz on 23/04/25.
//

import SwiftUI
import SwiftData

@main
struct PokedexApp: App {
    
    let container = try! ModelContainer(for: Pokemon.self)
    let pokemonLoader = PokemonLoader()
    
    let dataImporter : DataImporter
    
    init() {
        self.dataImporter = DataImporter(context: container.mainContext, pokemonLoader: pokemonLoader)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    do {
                        try await dataImporter.importData()
                    } catch {
                        print(error)
                    }
                }
        }.modelContainer(container)
    }
}
