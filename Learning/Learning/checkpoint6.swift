//
//  checkpoint6.swift
//  Learning
//
//  Created by Joseph Hanson Villar Hayes on 19/09/2025.
//

struct Car {
    private var model: String
    private var numberOfSeats: Int
    var currentGear: Int{
        didSet{
            print("Car now in \(currentGear) gear")
            
        }
    }
    var nextGear: Int
    
    init(model: String, numberOfSeats: Int, currentGear: Int, nextGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
        self.nextGear = nextGear
    }
    
    mutating func gearChange() -> Int{
        if nextGear > currentGear {
            currentGear += 1
        }
        else if nextGear < currentGear {
            currentGear -= 1
        }
        return currentGear
    }
}





