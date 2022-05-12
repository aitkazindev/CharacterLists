//
//  ViewController.swift
//  CharacterLists
//
//  Created by Ibrahim Aitkazin on 12.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelLastName: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    var name = ""
    var lastName = ""
    var image = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = name
        labelLastName.text = lastName
        imageview.image = UIImage(named: image)
    }


}

