//
//  checkpoint3.swift
//  Learning
//
//  Created by Joseph Hanson Villar Hayes on 18/09/2025.
//






func fizzbuzz () {
    var outputs = ""
    
    switch outputs {
        case "fizz":
            print("Fizz")
        case "buzz":
            print("Buzz")
        case "FizzBuzz":
            print("FizzBuzz")
    default:
        print("")
    }
    

    for i in 1...100 {
        
        if i % 3 == 0 && i % 5 == 0{
            outputs = "FizzBuzz"
            print(outputs)
            continue
        }
        
        if i % 3 == 0 {
            outputs = "fizz"
            print(outputs)
            
        }
        if i % 5 == 0 {
            outputs = "buzz"
            print(outputs)
        }
        else{
            print(i)
        }
    }
}

func optimizedFizzBuzz() {
    for i in 1...100 {
        switch (i % 3 == 0, i % 5 == 0) {
        case (true, true):
            print("FizzBuzz")
        case (true, false):
            print("Fizz")
        case (false, true):
            print("Buzz")
        default:
            print(i)
        }
    }
}

