//
//  WeSplitUnitTests.swift
//  WeSplitTests
//
//  Created by Joseph Hanson Villar Hayes on 22/09/2025.
//

import XCTest
@testable import WeSplit
import Testing

final class WeSplitUnitTests: XCTestCase {
    
    var sut: TipCalculator!
    override func setUp() {
        super.setUp()
        sut = TipCalculator()
        
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_totalPerPersonWhenTipIsZero(){
        let checkAmount: Double = 100
        let numberOfPeople: Int = 2
        let tipPercentage: Int = 0
        
        let calculatedValue = sut.calculateTip(billAmount: checkAmount, tipPercentage: tipPercentage, numberOfPeople: numberOfPeople)

        XCTAssertEqual(calculatedValue, 50)
    }
    
    func test_totalPerPersonWhenTipIsTenPercentPercisionErrorOccurs(){
        let checkAmount: Double = 100
        let numberOfPeople: Int = 2
        let tipPercentage: Int = 10
        
        let calculatedValue: Double = sut.calculateTip(billAmount: checkAmount, tipPercentage: tipPercentage, numberOfPeople: numberOfPeople)
        
        XCTAssertNotEqual(calculatedValue, 55.0)
    }
    
    func test_totalPerPersonWhenTipIsTenPercentPercisionAddedToAvoidError(){
        let checkAmount: Double = 100
        let numberOfPeople: Int = 2
        let tipPercentage: Int = 10
        
        let calculatedValue: Double = sut.calculateTip(billAmount: checkAmount, tipPercentage: tipPercentage, numberOfPeople: numberOfPeople)
        
        XCTAssertEqual(calculatedValue, 55.0, accuracy: 0.000001)
    }
    
    func test_noPeopleReturnsZero() {
        let checkAmount: Double = 100
        let numberOfPeople: Int = 0
        let tipPercentage: Int = 10
        
        XCTAssertEqual(sut.calculateTip(billAmount: checkAmount, tipPercentage: tipPercentage, numberOfPeople: numberOfPeople), 0)
    } 
}
