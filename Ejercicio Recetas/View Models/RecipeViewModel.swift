//
//  RecipeViewModel.swift
//  Ejercicio Recetas
//
//  Created by Luis Isaac Maya on 21/03/21.
//

import Foundation

struct RecipeListViewModel {
    let meals : [Recipe]
    
    var numberOfSections : Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int{
        return self.meals.count
    }
    
    func recipeAtIndex(_ index: Int) -> RecipeViewModel{
        let recipe = self.meals[index]
        return RecipeViewModel(recipe)
    }
}


struct  RecipeViewModel{
    private let recipe : Recipe
    
    var strMeal : String{
        return self.recipe.strMeal
    }
    
    var strCategory : String {
        return self.recipe.strCategory
    }
    
    var strMealThumb : String {
        return self.recipe.strMealThumb
    }
    
    var idMeal : String {
        return self.recipe.idMeal
    }
    var strInstructions : String {
        return self.recipe.strInstructions
    }
    
    init(_ recipe : Recipe) {
        self.recipe = recipe
    }
}
