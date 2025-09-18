//
//  checkpoint5.swift
//  Learning
//
//  Created by Joseph Hanson Villar Hayes on 18/09/2025.
//

func checkpoint5(numbers: [Int]) -> [String] {
    let lucky = numbers.filter { $0 % 2 != 0 }.sorted().map{ "\($0) is a lucky number" }
    return lucky
    
}
