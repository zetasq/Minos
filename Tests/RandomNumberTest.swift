//
//  RandomNumberTest.swift
//  Minos
//
//  Created by Zhu Shengqi on 21/10/2016.
//  Copyright © 2016 Zhu Shengqi. All rights reserved.
//

import XCTest
@testable import Minos

class RandomNumberTest: XCTestCase {
    static let generationCount = 30
    
    // MARK: - UnsignedInteger
    func testUInt64() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomNumberTest.generationCount {
            if let _ = UInt64.random() {
                actualGenerationCount += 1
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomNumberTest.generationCount, "failed to generate \(RandomNumberTest.generationCount - actualGenerationCount) random \(UInt64.self) numbers")
    }
    
    func testUInt32() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomNumberTest.generationCount {
            if let _ = UInt32.random() {
                actualGenerationCount += 1
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomNumberTest.generationCount, "failed to generate \(RandomNumberTest.generationCount - actualGenerationCount) random \(UInt32.self) numbers")
    }
    
    func testUInt16() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomNumberTest.generationCount {
            if let _ = UInt16.random() {
                actualGenerationCount += 1
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomNumberTest.generationCount, "failed to generate \(RandomNumberTest.generationCount - actualGenerationCount) random \(UInt16.self) numbers")
    }
    
    func testUInt8() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomNumberTest.generationCount {
            if let _ = UInt8.random() {
                actualGenerationCount += 1
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomNumberTest.generationCount, "failed to generate \(RandomNumberTest.generationCount - actualGenerationCount) random \(UInt8.self) numbers")
    }
    
    // MARK: - SignedInteger
    func testInt64() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomNumberTest.generationCount {
            if let _ = Int64.random() {
                actualGenerationCount += 1
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomNumberTest.generationCount, "failed to generate \(RandomNumberTest.generationCount - actualGenerationCount) random \(Int64.self) numbers")
    }
    
    func testInt32() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomNumberTest.generationCount {
            if let _ = Int32.random() {
                actualGenerationCount += 1
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomNumberTest.generationCount, "failed to generate \(RandomNumberTest.generationCount - actualGenerationCount) random \(Int32.self) numbers")
    }
    
    func testInt16() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomNumberTest.generationCount {
            if let _ = Int16.random() {
                actualGenerationCount += 1
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomNumberTest.generationCount, "failed to generate \(RandomNumberTest.generationCount - actualGenerationCount) random \(Int16.self) numbers")
    }
    
    func testInt8() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomNumberTest.generationCount {
            if let _ = Int8.random() {
                actualGenerationCount += 1
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomNumberTest.generationCount, "failed to generate \(RandomNumberTest.generationCount - actualGenerationCount) random \(Int8.self) numbers")
    }
}
