//
//  ExpensesViewController.swift
//  Payment List
//
//  Created by Arthur Obukhovich on 1/24/18.
//  Copyright © 2018 Arthur Obukhovich. All rights reserved.
//

import Foundation
import UIKit

class ExpensesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var expensesTableView: UITableView!
    
    // Example fill (for presentation)
    
    let fieldName = ["Car", "Phone", "Transport", "Holidays", "Home", "Hairdresser", "Restaurant", "Gym", "Other"]
    
    let percent = ["13 %", "7 %", "10 %", "49 %", "6 %", "5 %", "3 %", "4 %", "3 %"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expensesTableView.delegate = self
        expensesTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = expensesTableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = fieldName[indexPath.row]
        cell?.detailTextLabel?.text = "\(percent[indexPath.row])"
        
        return cell!
    }
}
