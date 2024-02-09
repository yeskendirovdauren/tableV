//
//  TableViewController.swift
//  tableview
//
//  Created by Dauren on 09.02.2024.
//

import UIKit

class TableViewController: UITableViewController {
    //let array = [1, 2, 3, 4, 5]
    //var arrayName = ["Ayanokoji", "Horikita", "Karuizawa", "Ichinose", "Ryuuen"]
    //var arraySurname = ["Kiyotaka", "Suzune", "Kei", "Honami", "Kakeru"]
    //var arrayImage = ["ayanokoji", "horikita", "karuizawa", "ichinose", "ryuuen"]
    var arrayPerson = [Person(name: "Ayanokoji", surname: "Kiyotaka", imagename: "ayanokoji"),
                       Person(name: "Horikita", surname: "Suzune", imagename: "horikita"),
                       Person(name: "Karuizawa", surname: "Kei", imagename: "karuizawa"),
                       Person(name: "Ichinose", surname: "Honami", imagename: "ichinose"),
                           Person(name: "Ryuuen", surname:  "Kakeru", imagename: "ryuuen")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func addPerson(_ sender: Any) {
        //arrayName.append("name")
        //arraySurname.append("surname")
        //arrayImage.append("avatar")
        arrayPerson.append(Person(name: "name", surname: "surname", imagename: "avatar"))
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPerson.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayPerson[indexPath.row].name
        
        let labelSurname = cell.viewWithTag(1001) as! UILabel
        labelSurname.text = arrayPerson[indexPath.row].surname
        
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = UIImage(named: arrayPerson[indexPath.row].imagename)

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(identifier: "detailViewController") as! ViewController
        
        navigationController?.show(detailVc, sender: self)
        
        //detailVc.name = arrayPerson[indexPath.row].name
        //detailVc.surname = arrayPerson[indexPath.row].surname
        //detailVc.imagename = arrayPerson[indexPath.row].imagename
        detailVc.person = arrayPerson[indexPath.row]
        
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
            arrayPers
           
            
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


