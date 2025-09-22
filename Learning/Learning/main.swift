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

print("---Checkpoint 6---")

var toyota = Car(model: "Toyota Corolla", numberOfSeats: 5, currentGear: 0, nextGear: 1)

toyota.gearChange()

toyota.nextGear = 2
toyota.gearChange()

toyota.nextGear = 3
toyota.gearChange()

toyota.nextGear = 4
toyota.gearChange()

toyota.nextGear = 5
toyota.gearChange()

toyota.nextGear = 4
toyota.gearChange()


print("---Checkpoint 7---")

let animal = Animal(legs: 2)

print("A generic animal makes the following sounds: \(animal.makeSound())")

let dog = Dog()

print("A dog makes the following sounds: \(dog.makeSound())")

let poodle = Poodle()

print("A poodle makes the following sounds: \(poodle.makeSound()) and has \(poodle.legs) legs")

print("---Checkpoint 8---")

let house = House(rooms: 3, cost: 200000, estateAgent: "bridgfords")

print(house.buildingSummary())

print("---Checkpoint 9---")

let arr = [1,2,3,4,5]
var arr2: [Int] = []

print(randomInt(array: arr))
print(randomInt(array: arr2))

