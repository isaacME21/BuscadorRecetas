//
//  Recipe.swift
//  Ejercicio Recetas
//
//  Created by Luis Isaac Maya on 21/03/21.
//

import Foundation

struct RecipeList : Decodable {
    let meals : [Recipe]
}

struct Recipe : Decodable{
    let strMeal : String
    let strCategory : String
    let strMealThumb : String
    let idMeal: String
    let strInstructions : String
}
