//
//  Recipe.swift
//  SimpleRecipeApp
//
//  Created by Selin Samray on 3.07.2025.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID() // Generates a unique identifier for each recipe.
    var name: String
    var ingredients: [String]
    var instructions: String
    var servings: Int
    var prepTime: String
    var cookTime: String
    var imageName: String
}
