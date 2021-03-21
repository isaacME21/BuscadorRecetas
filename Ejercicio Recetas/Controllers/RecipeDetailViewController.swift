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
