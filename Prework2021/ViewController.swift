//
//  ViewController.swift
//  Prework2021
//
//  Created by Alfonso Garibay on 2/6/21.
//

import UIKit

class ViewController: UIViewController {

    // bill amount is below...
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // calculate tip below...
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from text feild input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

