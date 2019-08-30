//
//  ViewController.swift
//  tippy
//
//  Created by Juan J. Mendoza on 8/29/19.
//  Copyright © 2019 Juan J. Mendoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        print("herro")
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // With ??, everything on the left of it executes if it's valid, otherwise execute what is on the right of ??.
        let bill = Double(billField.text!) ?? 0 // Get the bill amount
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

