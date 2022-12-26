//
//  IdolTableViewController.swift
//  MultiTypeCellEx
//
//  Created by wizard on 2022/10/17.
//

import UIKit

class IdolTableViewController: UITableViewController {
    let twice = ["사나", "나연", "쯔위", "미나", "지효", "채영", "다현", "정연", "모모"]
    let twiceImages = ["twice1","twice2","twice3","twice4","twice5","twice6","twice7","twice8","twice9"]
    let bts = ["RM" , "진", "슈가", "제이홉", "지민", "뷔", "정국" ]
    let btsImages = ["bts1" , "bts2", "bts3", "bts4", "bts5", "bts6", "bts7" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return bts.count
        } else {
            return twice.count
        }
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BTSCell", for: indexPath)
            let imageBTS = cell.viewWithTag(1) as? UIImageView
            let imageName = btsImages[indexPath.row]
            let image = UIImage(named: imageName)
            imageBTS?.image = image
            
            let lblBTS = cell.viewWithTag(2) as? UILabel
            lblBTS?.text = bts[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwiceCell", for: indexPath)
            let lblTwice = cell.viewWithTag(11) as? UILabel
            lblTwice?.text = twice[indexPath.row]
            let imageTwice = cell.viewWithTag(12) as? UIImageView
            imageTwice?.image = UIImage(named: twiceImages[indexPath.row])
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        } else {
            return 80
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
