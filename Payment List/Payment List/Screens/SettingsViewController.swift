//
//  SettingsViewController.swift
//  Payment List
//
//  Created by Arthur Obukhovich on 1/24/18.
//  Copyright © 2018 Arthur Obukhovich. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var settingsTableView: UITableView!
    
    let fieldName = ["Edit expenses", "Set password", "Reset settings"]
//    let share = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = settingsTableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = fieldName[indexPath.row]
//        cell?.detailTextLabel?.text = "\(share[indexPath.row])"
        
        return cell!
    }
}


