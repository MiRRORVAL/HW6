//
//  DetailViewController.swift
//  HW6
//
//  Created by Nur on 11.12.2023.
//

import UIKit

class DetailViewController: UIView {
    @IBOutlet var NameAndSurname: UILabel!
    @IBOutlet var PhoneNumber: UILabel!
    @IBOutlet var email: UILabel!
    
    var personeNameAndSername: String!
    var phoneNumber: Int!
    var emailAdres: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
