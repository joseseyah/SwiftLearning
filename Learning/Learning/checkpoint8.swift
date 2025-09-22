//
//  checkpoint8.swift
//  Learning
//
//  Created by Joseph Hanson Villar Hayes on 22/09/2025.
//

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var estateAgent: String { get }
    
    func buildingSummary() -> String
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    func buildingSummary() -> String {
        var summary = "This is a \(rooms)-room house priced at \(cost). It was sold by \(estateAgent)."
        return summary
        
    }
    init(rooms: Int, cost: Int, estateAgent: String) {
        self.rooms = rooms
        self.cost = cost
        self.estateAgent = estateAgent
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    func buildingSummary() -> String {
        var summary = "This is a \(rooms)-room office priced at \(cost). It was sold by \(estateAgent)."
        return summary
    }
    init(rooms: Int, cost: Int, estateAgent: String) {
        self.rooms = rooms
        self.cost = cost
        self.estateAgent = estateAgent
    }
}
