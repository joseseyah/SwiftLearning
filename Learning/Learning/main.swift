//
//  main.swift
//  Learning
//
//  Created by Joseph Hanson Villar Hayes on 18/09/2025.
//

import Foundation

print("Hello, World!")



// Checkpoint 1
print("---Checkpoint 1---")
let tempC = 25
let tempF = convertToFahrenheit(tempC: tempC)

print(tempF)

//checkpoint 2
print("---Checkpoint 2---")

checkpoint2()

print("---Checkpoint 3---")

//fizzbuzz()
optimizedFizzBuzz()

print("---Checkpoint 4---")

let number = 144
let squaredNumber = try squaring(value: number)

print(squaredNumber)

print("---Checkpoint 5---")

let numbers = [7,4,38,21,6,15,12,33,31,49]

let luckyNumbers = checkpoint5(numbers: numbers)

for number in luckyNumbers {
    print(number)
}





