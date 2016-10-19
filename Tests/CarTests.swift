//
//  File.swift
//  Minos
//
//  Created by Zhu Shengqi on 19/10/2016.
//  Copyright © 2016 Zhu Shengqi. All rights reserved.
//

import XCTest
@testable import Minos

class CarTests: XCTestCase {
    func testCarDescription() {
        let car = Car(name: "Test", miles: 0)
        XCTAssertEqual(car.description, "Car 'Test' has 0 miles.")
    }
    
    func testCarDescriptionAfterAddingMiles() {
        let car = Car(name: "Test", miles: 0)
        car.addMiles(125)
        XCTAssertEqual(car.description, "Car 'Test' has 125 miles.")
        
        #if os(macOS)
            print("macOS")
        #elseif os(iOS)
            print("iOS")
        #endif
        
    }
}
