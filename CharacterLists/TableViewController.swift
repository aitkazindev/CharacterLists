//
//  TableViewController.swift
//  CharacterLists
//
//  Created by Ibrahim Aitkazin on 12.05.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var arrayNames = ["Hinata","Tobio","Nishinoya","Kei"]
    var arrayLastNames = ["Shouyou","Kageyama","Yuu","Tsukishima"]
    var arrayImages = ["image1","image2","image3","image4"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    @IBAction func addNewPerson(_ sender: Any) {
        arrayNames.append("User5")
        arrayLastNames.append("LastName5")
        arrayImages.append("image1")
        tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let labelName = cell.viewWithTag(1000) as! UILabel
        labelName.text = arrayNames[indexPath.row]
        
        let labelLastNames = cell.viewWithTag(1001) as! UILabel
        labelLastNames.text = arrayLastNames[indexPath.row]
        
        let imageview = cell.viewWithTag(1002) as! UIImageView
        imageview.image = UIImage(named:arrayImages[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = (storyboard?.instantiateViewController(withIdentifier: "DetailVC"))! as! ViewController
        detailVC.name = arrayNames[indexPath.row]
        detailVC.lastName = arrayLastNames[indexPath.row]
        detailVC.image = arrayImages[indexPath.row]
        
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayNames.remove(at: indexPath.row)
            arrayImages.remove(at: indexPath.row)
            arrayLastNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
