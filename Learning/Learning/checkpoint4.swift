//
//  checkpoint4.swift
//  Learning
//
//  Created by Joseph Hanson Villar Hayes on 18/09/2025.
//

enum NumberError: Error {
    case noRoot, tooLarge, tooSmall
}

func squaring (value: Int) throws -> Int {
    if value < 1 {
        throw NumberError.tooSmall
    }
    if value > 10000 {
        throw NumberError.tooLarge
    }
    for i in 1...100 {
        if i * i == value {
            return i
        }
    }
    throw NumberError.noRoot
}

