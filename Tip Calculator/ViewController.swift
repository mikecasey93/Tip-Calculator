//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Michael Casey on 12/29/20.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    func setBack(data: String, data2: String, data3: String) {
        tipControl.setTitle(data, forSegmentAt: 0)
        tipControl.setTitle(data2, forSegmentAt: 1)
        tipControl.setTitle(data3, forSegmentAt: 2)
        
        var first = Double(data.prefix(data.count-1))
        var second = Double(data2.prefix(data2.count-1))
        var third = Double(data3.prefix(data3.count-1))
        tipPercentage = [first!/100, second!/100, third!/100]
    }
    
    func passData(data: String, data2: String, data3: String) {
        tipControl.setTitle(data, forSegmentAt: 0)
        tipControl.setTitle(data2, forSegmentAt: 1)
        tipControl.setTitle(data3, forSegmentAt: 2)
        
        var first = Double(data.prefix(data.count-1))
        var second = Double(data2.prefix(data2.count-1))
        var third = Double(data3.prefix(data3.count-1))
        tipPercentage = [first!/100, second!/100, third!/100]
        
        
    }
    
    

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var tipPercentage = [0.15, 0.18, 0.2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        //let tipPercentage = [0.15, 0.18, 0.2]
        
        // Calculate tip and total
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue_call" {
            let destination = segue.destination as! SettingsViewController
            destination.delegate1 = self
            
        }
    }
    
    
}

