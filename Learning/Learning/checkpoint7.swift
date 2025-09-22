//
//  checkpoint7.swift
//  Learning
//
//  Created by Joseph Hanson Villar Hayes on 19/09/2025.
//

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func makeSound() -> String {
        return "Sound"
    }
    
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    override func makeSound() -> String {
        return "Woof!"
    }
}

class Corgi: Dog {
    override func makeSound() -> String {
        return "Arf arf!"
    }
}

class Poodle: Dog {
    override func makeSound() -> String {
        return "Squeak!"
    }
}
