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
    
    func getIngredients() -> [String]{
        var ingredientsTemp : [String] = []
        if self.recipe.strIngredient1 != nil{
            ingredientsTemp.append(self.recipe.strIngredient1!)
        }
        if self.recipe.strIngredient2 != nil{
            ingredientsTemp.append(self.recipe.strIngredient2!)
        }
        if self.recipe.strIngredient3 != nil{
            ingredientsTemp.append(self.recipe.strIngredient3!)
        }
        if self.recipe.strIngredient4 != nil{
            ingredientsTemp.append(self.recipe.strIngredient4!)
        }
        if self.recipe.strIngredient5 != nil{
            ingredientsTemp.append(self.recipe.strIngredient5!)
        }
        if self.recipe.strIngredient6 != nil{
            ingredientsTemp.append(self.recipe.strIngredient6!)
        }
        if self.recipe.strIngredient7 != nil{
            ingredientsTemp.append(self.recipe.strIngredient7!)
        }
        if self.recipe.strIngredient8 != nil{
            ingredientsTemp.append(self.recipe.strIngredient8!)
        }
        if self.recipe.strIngredient9 != nil{
            ingredientsTemp.append(self.recipe.strIngredient9!)
        }
        if self.recipe.strIngredient10 != nil{
            ingredientsTemp.append(self.recipe.strIngredient10!)
        }
        if self.recipe.strIngredient11 != nil{
            ingredientsTemp.append(self.recipe.strIngredient11!)
        }
        if self.recipe.strIngredient12 != nil{
            ingredientsTemp.append(self.recipe.strIngredient12!)
        }
        if self.recipe.strIngredient13 != nil{
            ingredientsTemp.append(self.recipe.strIngredient13!)
        }
        if self.recipe.strIngredient14 != nil{
            ingredientsTemp.append(self.recipe.strIngredient14!)
        }
        if self.recipe.strIngredient15 != nil{
            ingredientsTemp.append(self.recipe.strIngredient15!)
        }
        if self.recipe.strIngredient16 != nil{
            ingredientsTemp.append(self.recipe.strIngredient16!)
        }
        if self.recipe.strIngredient17 != nil{
            ingredientsTemp.append(self.recipe.strIngredient17!)
        }
        if self.recipe.strIngredient18 != nil{
            ingredientsTemp.append(self.recipe.strIngredient18!)
        }
        if self.recipe.strIngredient19 != nil{
            ingredientsTemp.append(self.recipe.strIngredient19!)
        }
        if self.recipe.strIngredient20 != nil{
            ingredientsTemp.append(self.recipe.strIngredient10!)
        }
        
        return ingredientsTemp
    }
    
    
    
    init(_ recipe : Recipe) {
        self.recipe = recipe
    }
}
