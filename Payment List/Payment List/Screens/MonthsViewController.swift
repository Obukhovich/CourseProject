//
//  MonthsViewController.swift
//  Payment List
//
//  Created by Arthur Obukhovich on 2/23/18.
//  Copyright © 2018 Arthur Obukhovich. All rights reserved.
//

import Foundation
import UIKit


class MonthsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var monthsTableView: UITableView!
    
    // Example fill (for presentation)
    
    let fieldName = ["February 2018", "January 2018", "December 2017",  "November 2017", "October 2017", "September 2017", "August 2017", "July 2017", "June 2017", "May 2017", "April 2017", "March 2017", "February 2017", "January 2017"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monthsTableView.delegate = self
        monthsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = monthsTableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = fieldName[indexPath.row]
        
        return cell!
    }
}
