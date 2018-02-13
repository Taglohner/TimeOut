
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
        
        if indexPath.item == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCollectionViewCell", for: indexPath) as! HomeTableCollectionViewCell
            cell.categories = categories?[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableViewCell", for: indexPath) as! HomeRegularTableViewCell
            cell.categories = categories?[indexPath.row]
            return cell
        }
    }
    
    
}
