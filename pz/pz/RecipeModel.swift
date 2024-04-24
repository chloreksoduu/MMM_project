//
//  RecipeModel.swift
//  pz
//
//  Created by Patrycja Zadziłko on 24/04/2024.
//

import SwiftUI

struct Recipe: Identifiable{
    var id: Int
    var title: String
    var imgName: String
    var rating: Int
    
}

var recipies = [
    Recipe(id: 0, title: "Przepis 1", imgName: "recipe1", rating: 4),
    Recipe(id: 1, title: "Przepis 2", imgName: "recipe2", rating: 5),
    Recipe(id: 2, title: "Przepis 3", imgName: "recipe3", rating: 3),
    Recipe(id: 3, title: "Przepis 4", imgName: "recipe4", rating: 2),
    Recipe(id: 4, title: "Przepis 5", imgName: "recipe5", rating: 4),
    Recipe(id: 5, title: "Przepis 1", imgName: "recipe1", rating: 4),
    Recipe(id: 6, title: "Przepis 2", imgName: "recipe2", rating: 5),
    Recipe(id: 7, title: "Przepis 3", imgName: "recipe3", rating: 3),
    Recipe(id: 8, title: "Przepis 4", imgName: "recipe4", rating: 2),
    Recipe(id: 9, title: "Przepis 5", imgName: "recipe5", rating: 4)
]
