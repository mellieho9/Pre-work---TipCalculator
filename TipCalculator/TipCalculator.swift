//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by Meliora Ho on 21/01/2022.
//

import Foundation

class TipCalculator {
    var billAmount: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var total: Double = 0
    
    init(billAmount: Double, tipPercentage: Double){
        self.billAmount = billAmount
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip() {
        tipAmount = billAmount * tipPercentage
        total = tipAmount + billAmount
    }
}
