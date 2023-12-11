//
//  EmloyeeListViewController.swift
//  HW6
//
//  Created by Nur on 11.12.2023.
//

import UIKit

class EmloyeeListViewController: UITableViewController {
    
    class Empoyee {
        var name: String = ""
        var surname: String = ""
        var phoneNumber: Int = 0
        var email: String = ""
    }
    let employeeNames: [String] = ["Josh", "Michail", "Enrice", "Harolt", "Ane", "Hary", "Robin", "Max", "Lion", "Ben"]
    let employeeSurnames: [String] = ["Galeev", "Naumov", "Idrisov", "Gareev", "Karamazov", "Malikov",
    "Gardeev", "Zakiev", "Leveev", "Avinskiy"]
    let employeePhoneNumbers: [Int] = [89135332602, 89135302837, 89512332647, 89394532698,
    89512332091, 89172354097, 89122343099, 89122345839,
    89122344920, 89992045823]
    let employeeEmails: [String] = ["afas@mail.ru",
    "afadf@gmail.com", "dfafad@protonmail.net",
    "afha@jaber.uk", "f9w2@hot.com, jadd@email.ru",
    "fggw@yahoo.com", "daaa@kmail.net",
    "sadfase@dlingo.uk", "lubady@ran.su"]
    var arrayOfEmployees: [Empoyee] = []

    
//    override func viewDidLoad() {
//        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return employeeNames.count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        for index in 0..<arrayOfEmployees.count{
            let employee = Empoyee()
            employee.name = employeeNames[index]
            employee.surname = employeeSurnames[index]
            employee.email = employeeEmails[index]
            employee.phoneNumber = employeePhoneNumbers[index]
            arrayOfEmployees.append(employee)
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "celOfPeoplese", for: indexPath)
        let name = employeeNames[indexPath.row]
        let surname = employeeSurnames[indexPath.row]
        cell.textLabel?.text = name + " " + surname

        return cell
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
