//
//  checkpoint9.swift
//  Learning
//
//  Created by Joseph Hanson Villar Hayes on 22/09/2025.
//

func randomInt(array: [Int]?) -> Int {
    return array?.randomElement() ?? Int.random(in: 1...100)
}
