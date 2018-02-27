
import UIKit

extension DetailsTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! DetailsPhotoAlbumCell
//            cell.hero.id = "photoAlbum"
//            cell.hero.modifiers = [.]
            return cell
        } else {
            return UITableViewCell()
        }
    }

    
    

}