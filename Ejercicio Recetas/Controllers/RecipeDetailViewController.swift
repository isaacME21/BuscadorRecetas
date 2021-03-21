//
//  RecipeDetailViewController.swift
//  Ejercicio Recetas
//
//  Created by Luis Isaac Maya on 21/03/21.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    @IBOutlet weak var detailTextView : UITextView!
    var recipeVM : RecipeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = recipeVM.strMeal
        detailTextView.text = recipeVM.strInstructions
    }
}

extension RecipeDetailViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeVM.getIngredients().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientesCell")!
        let ingredient = recipeVM.getIngredients()[indexPath.row]
        cell.textLabel?.text = "Ingrediente"
        cell.detailTextLabel?.text = ingredient
        
        return cell
    }
}
