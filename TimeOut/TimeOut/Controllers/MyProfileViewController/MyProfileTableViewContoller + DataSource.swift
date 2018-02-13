

import UIKit

extension MyProfileTableViewContoller {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myProfileCell", for: indexPath) as! MyProfileTableViewCell
        let post = postArray[indexPath.row]
        cell.post = post
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // DO SOMETHING
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        return tableView.dequeueReusableHeaderFooterView(withIdentifier: "RootHeader")
//    }
}
