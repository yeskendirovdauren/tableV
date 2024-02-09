//
//  ViewController.swift
//  tableview
//
//  Created by Dauren on 09.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelSurname: UILabel!
    
    //var name = ""
    //var surname = ""
    //var imagename = ""
    var person = Person()
    
    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelName.text = person.name
        labelSurname.text = person.surname
        imageview.image = UIImage(named: person.imagename)
    }


}

