//
//  RecipeDetailView.swift
//  SimpleRecipeApp
//
//  Created by Selin Samray on 3.07.2025.
//

import SwiftUI
struct RecipeDetailView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomLeading) {
                    if let uiImage = loadImage(named: recipe.imageName) {
                        Image(uiImage: uiImage)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .clipped()
                    } else {
                        Color.black
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                    }
                    
                    Rectangle()
                        .foregroundColor(.black)
                        .opacity(0.4)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                    
                    Text(recipe.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.leading, .bottom], 10)
                }

                
                HStack {
                    Label("\(recipe.servings)", systemImage: "person.2.fill")
                    Spacer()
                    Label("\(recipe.prepTime)", systemImage: "clock")
                    Spacer()
                    Label("\(recipe.cookTime)", systemImage: "flame")
                }
                .padding()
                .background(Color(.systemGray6))
                
                .cornerRadius(10)
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Ingredients:")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    ForEach(recipe.ingredients, id: \.self) { ingredient in
                        Text("• \(ingredient)")
                            .padding(.vertical, 2)
                    }
                    Text("Instructions")
                        .padding(.top, 15)
                        .font(.headline)
                        .padding(.vertical, 5)
                    
                    Text(recipe.instructions)
                        
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                .padding()
            }
            .background(Color(UIColor.systemGroupedBackground))
        }
        .navigationBarTitle(recipe.name, displayMode: .inline)
    }
    // Helper function to load images
    func loadImage(named name: String) -> UIImage? {
        return UIImage(named: name)
    }
}
    #Preview {
        RecipeDetailView(recipe: SampleData.recipes[0])
    }
