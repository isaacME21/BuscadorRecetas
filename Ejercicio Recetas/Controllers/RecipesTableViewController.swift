//
//  RecipesTableViewController.swift
//  Ejercicio Recetas
//
//  Created by Luis Isaac Maya on 21/03/21.
//

import UIKit

class RecipesTableViewController: UITableViewController {
    
    @IBOutlet weak var recipesSearchBar : UISearchBar!
    
    private var recipeListMV: RecipeListViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        hideKeyboard()
    }
    
    private func hideKeyboard(){
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapGesture)
        tapGesture.cancelsTouchesInView = false
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.recipeListMV == nil ? 0 : self.recipeListMV.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipeListMV.numberOfRowsInSection(section)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeTableViewCell", for: indexPath) as? RecipeTableViewCell else{
            fatalError("RecipeTableViewCell not found")
        }
        
        let recipeVM = self.recipeListMV.articleAtIndex(indexPath.row)
        
        cell.category.text = recipeVM.strCategory
        cell.name.text = recipeVM.strMeal
        cell.imageView?.image = UIImage(named: "prueba")
        return cell
    }

}



extension RecipesTableViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        setUpRecipes(meal: searchText)
    }
    
    private func setUpRecipes(meal : String){
        let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?s=\(meal)")!
        WebService().getRecipes(url: url) { recipes in
            if let recipes = recipes{
                self.recipeListMV = RecipeListViewModel(meals: recipes)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
}
