//
//  ContentView.swift
//  WeSplit
//
//  Created by Joseph Hanson Villar Hayes on 22/09/2025.
//

import SwiftUI

struct ContentView: View {
    @State internal var checkAmount = 0.0
    @State internal var numberOfPeople = 2
    @State internal var tipPercentage = 0
    
    let tipPercentages: [Int] = [10, 15, 20, 25, 50, 0]
    
    private var tipcalculation = TipCalculator()
    
    var totalPerPerson: Double {
        return tipcalculation.calculateTip(billAmount: checkAmount, tipPercentage: tipPercentage, numberOfPeople: numberOfPeople)
    }
    
    
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section("Tip percentage") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.palette)
                }
                
                Section("Total per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
