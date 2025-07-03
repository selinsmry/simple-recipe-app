//
//  ContentView.swift
//  SimpleRecipeApp
//
//  Created by Selin Samray on 3.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(SampleData.recipes){ recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                    Text(recipe.name)
                }
            }
            .navigationBarTitle("Recipes")
        }
    }
}
#Preview {
    ContentView()
}
