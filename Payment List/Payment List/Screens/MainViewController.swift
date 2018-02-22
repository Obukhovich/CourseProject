//
//  MainViewController.swift
//  Payment List
//
//  Created by Arthur Obukhovich on 1/16/18.
//  Copyright © 2018 Arthur Obukhovich. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func numberPressed(_ sender: RoundButton) {
    }
    
    @IBAction func allClearPressed(_ sender: RoundButton) {
    }
    
    @IBAction func dotPressed(_ sender: RoundButton) {
    } 
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let expensesImage = ["Car", "Phone", "Transport", "Holidays", "Home", "Hairdresser", "Restaurant", "Gym", "Other"]
    
    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = self
        super.viewDidLoad()
        }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return expensesImage.count
    }
    

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        
        cell.imageCell.image = UIImage(named: expensesImage[indexPath.row])
        cell.labelCell.text = expensesImage[indexPath.row].capitalized
        
        return cell
    }
    
}
