//
//  PokemonModel.swift
//  Pokedex
//
//  Created by Maul Camlopz on 23/04/25.
//

import Foundation
import SwiftData

@Model
class Pokemon: Identifiable {
    @Attribute(.unique) var name: String
    var url: String
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}
