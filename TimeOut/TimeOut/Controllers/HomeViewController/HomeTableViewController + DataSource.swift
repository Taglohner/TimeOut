
import UIKit

extension HomeTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = categories?.count {
            return count
        }  else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let categories = categories {
            
            for category in categories {
            
                if category.name == "Sponsored Restaurants" {
                    
                    let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCollectionViewCell", for: indexPath) as! HomeTableCollectionViewCell
                    cell.category = categories[indexPath.row]
                    return cell
                }
                    
                else {
        
                    let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCollectionViewCell", for: indexPath) as! HomeTableCollectionViewCell
                    cell.category = categories[indexPath.row]
                    return cell
                }
            }
        }
        
    return UITableViewCell()
        
    }
}
