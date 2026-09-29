//
//  NewViewController.swift
//  FlixsterPt2
//
//  Created by Snezhana Valchuk on 3/16/23.
//

import UIKit

class NewViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=newViewTable.dequeueReusableCell(withIdentifier: "NewViewCell", for: indexPath) as! NewViewCell
        
        let poster=posters[indexPath.row]
        
        cell.configure(with: poster)
        
        return cell
    }
    

    @IBOutlet weak var newViewTable: UITableView!
    
    var posters:[Poster]=[]
    override func viewDidLoad() {
        super.viewDidLoad()

        newViewTable.dataSource=self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
