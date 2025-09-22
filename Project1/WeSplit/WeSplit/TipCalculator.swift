//
//  TipCalculator.swift
//  WeSplit
//
//  Created by Joseph Hanson Villar Hayes on 22/09/2025.
//

struct TipCalculator {
    func calculateTip(billAmount: Double, tipPercentage: Int, numberOfPeople: Int) -> Double {
        if numberOfPeople != 0 {
            return (billAmount * (Double(tipPercentage)/100 + 1)) / Double(numberOfPeople)
        }
        return 0.0
    }
}

