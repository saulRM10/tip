//
//  ViewController.swift
//  tip
//
//  Created by saul reyes on 12/14/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
       // dismiss keyboard
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // get the bill amount
        let bill = Double(billTextField.text!) ?? 0 // if nopt valid change to 0
        
        
        // calculate tip and total
        
        let tipPercentages = [0.15,0.2 , 0.27]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // update the tip and total labels
        
        tipLabel.text = String(format:"$%.2f" , tip)
        
        
        totalLabel.text = String(format: "$%.2f", total)
    }
}

