//
//  WebService.swift
//  Ejercicio Recetas
//
//  Created by Luis Isaac Maya on 21/03/21.
//

import Foundation
class WebService{
    
    func getRecipes(url: URL, completion: @escaping ([Recipe]?) -> ()){
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                do{
                    let recipes = try JSONDecoder().decode(RecipeList.self, from: data)
                    completion(recipes.meals)
                }catch{
                    print(error.localizedDescription)
                    completion(nil)
                }
            }
        }.resume()
    }
}
