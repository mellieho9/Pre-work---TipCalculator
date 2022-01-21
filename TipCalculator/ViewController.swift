//
//  ViewController.swift
//  TipCalculator
//
//  Created by Meliora Ho on 16/01/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISlider!
    @IBOutlet weak var numOfPeopleControl: UISlider!
    @IBOutlet weak var numofPeopleLabel: UILabel!
    @IBOutlet weak var splitAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var tipCalculator = TipCalculator(billAmount: 0, tipPercentage: 0.10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
    }
    
    func calculateBill(){
        tipCalculator.tipPercentage = Double(tipControl.value)/100.0
        tipCalculator.billAmount = (billAmountTextField.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        updateUI()
    }
    
    func updateUI(){
        totalLabel.text = String(format:"$%0.2f",tipCalculator.total)
        let numPeople: Int = Int(numOfPeopleControl.value)
        splitAmountLabel.text = String(format: "$%0.2f",tipCalculator.total / Double(numPeople))
    }
    
    @IBAction func tipSliderValueChanged(sender: Any){
        tipAmountLabel.text =  String(format: "Tip: %02d%%", Int(tipControl.value))
        calculateBill()
    }
    
    @IBAction func numPeopleSliderValueChanged (sender: Any){
        numofPeopleLabel.text = "Split: \(Int(numOfPeopleControl.value))"
        calculateBill()
    }
    
    @IBAction func billAmountTextFieldChanged (sender: Any){
        calculateBill()
    }


}

