//
//  HistoryViewController.swift
//  Payment List
//
//  Created by Arthur Obukhovich on 1/24/18.
//  Copyright © 2018 Arthur Obukhovich. All rights reserved.
//

import Foundation
import UIKit

// Example fill

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var historyTableView: UITableView!
    
    let fieldName = ["Car", "Home", "Gym", "Holidays", "Car", "Phone", "Transport", "Gym", "Holidays", "Home", "Hairdresser", "Restaurant", "Gym", "Other", "Car", "Phone", "Home", "Gym", "Car", "Home", "Gym", "Holidays", "Car", "Phone", "Transport", "Gym", "Holidays", "Home", "Hairdresser", "Restaurant", "Gym", "Other", "Car", "Phone", "Home", "Gym", "Car"]
    
    let share = ["10 $", "25 $", "42 $", "153 $", "34 $", "6 $", "37 $", "8 $", "143 $", "15 $", "32 $", "4 $", "9 $", "14 $", "78 $", "65 $", "81 $", "32 $", "10 $", "25 $", "42 $", "153 $", "34 $", "6 $", "37 $", "8 $", "143 $", "15 $", "32 $", "4 $", "9 $", "14 $", "78 $", "65 $", "81 $", "32 $", "10 $"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyTableView.delegate = self
        historyTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = historyTableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = fieldName[indexPath.row]
        cell?.detailTextLabel?.text = "\(share[indexPath.row])"
        
        return cell!
    }
}
