//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Michael Casey on 12/30/20.
//

import UIKit

protocol CanReceive {
    func passData(data: String, data2: String, data3: String)
    func setBack(data: String, data2: String, data3: String)
}

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1: UITextField!
    @IBOutlet weak var tip2: UITextField!
    @IBOutlet weak var tip3: UITextField!
    var delegate1:CanReceive?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setDefault(_ sender: Any) {
        delegate1?.setBack(data: "15%", data2: "18%", data3: "20%")
        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
    @IBAction func changePercent(_ sender: Any) {
        delegate1?.passData(data: tip1.text!, data2: tip2.text!, data3: tip3.text!)
        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
//
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
