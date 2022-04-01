//
//  ViewController.swift
//  EmployeeListSharad
//
//  Created by admin on 27/03/2022.
//

import UIKit

struct Employee {
    
    var employeeName: String
    var employeeCompany: String
    var employeeAge: String
    
}

class ViewController: UIViewController, UITableViewDataSource {
    
   
    @IBOutlet weak var tableview: UITableView!
    
    

    
    var employeeList = [Employee(employeeName: "Sharad Pun", employeeCompany: "Cisco", employeeAge: "21"),
                        Employee(employeeName: "Sai Venkatesh ", employeeCompany: "ITC", employeeAge: "22"),
                        Employee(employeeName: "Mateus Goncalves ", employeeCompany: "Youtube", employeeAge: "23"),
                        Employee(employeeName: "Charlie Newman ", employeeCompany: "Google", employeeAge: "24"),
                        Employee(employeeName: "Mathew I ", employeeCompany: "Facebook", employeeAge: "25"),
                        Employee(employeeName: "Melvyn Awani ", employeeCompany: "IBM", employeeAge: "26"),
                        Employee(employeeName: "Donald Daniels ", employeeCompany: "Twitter", employeeAge: "27")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
       
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EmployeeTableViewCell
        
        var e1: Employee
        e1 = employeeList[indexPath.row]
        
        cell.nameLabel.text = e1.employeeName
        cell.companyLabel.text = e1.employeeCompany
        cell.ageLabel.text = e1.employeeAge
        
        return cell
        
    }
        

}

