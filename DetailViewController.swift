//
//  DetailViewController.swift
//  HW6
//
//  Created by Nur on 11.12.2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var NameAndSurname: UILabel!
    @IBOutlet var PhoneNumber: UILabel!
    @IBOutlet var EmailAdress: UILabel!
    
    var personeNameAndSername: String = ""
    var phoneNumber: Int = 0
    var emailAdres: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameAndSurname.text = personeNameAndSername
        PhoneNumber.text = String(phoneNumber)
        EmailAdress.text = emailAdres
    }
}
